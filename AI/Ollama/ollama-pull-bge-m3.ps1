# 定义模型名称避免硬编码
$modelName = "bge-m3"

# 设置重试参数
$maxRetries = 50
$retryInterval = 3  # 秒
$downloadTimeout = 80  # 秒

for ($retry = 1; $retry -le $maxRetries; $retry++) {
    # 精确检查模型是否存在
    $modelExists = ollama list | Where-Object { $_ -match "\b$modelName\b" }
    
    if ($modelExists) {
        Write-Host "[$(Get-Date)] model is already downloaded!"
        exit 0
    }

    Write-Host "[$(Get-Date)] start $retry times downloading..."
    
    # 启动进程并显示实时输出
    $process = Start-Process -FilePath "ollama" `
        -ArgumentList "pull", $modelName `
        -PassThru `
        -NoNewWindow

    # 等待下载完成或超时
    try {
        $process | Wait-Process -Timeout $downloadTimeout -ErrorAction Stop
    } catch {
        # 超时处理
        Write-Host "download timeout, safe terminate process..."
        $process | Stop-Process -Force
    }

    if (-not $process.HasExited) {
        $process | Stop-Process -Force
        Write-Host "process terminated due to timeout."
    } else {
        # 检查退出代码
        if ($process.ExitCode -eq 0) {
            Write-Host "download success!"
            exit 0
        }
        Write-Host "download failed, exit code: $($process.ExitCode)"
    }

    Start-Sleep -Seconds $retryInterval
}

Write-Host "exceeded maximum retries ($maxRetries), download failed."
exit 1