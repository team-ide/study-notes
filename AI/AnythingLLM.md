# AnythingLLM

* 官网地址：https://anythingllm.com/
* 下载地址：https://anythingllm.com/desktop
* 源码地址：https://github.com/Mintplex-Labs/anything-llm

* Anything LLM运行的流程是：
接受外部资料信息 -> 转化为模型能理解的向量形式 -> 接受用户提问 -> 检索相关信息 -> 生成回答

Anything LLM可以接受各种格式的外部资料，比如PDF、Word（DOC、DOCX）、TXT 、PPT、Excel等，还支持URL检索


* 安装 nomic-embed-text 
用途: 基于 nomic-bert 架构开发文本嵌入模型模型,用于将文本中蕴含的语义信息编码到向量空间,便于计算机进行处理和分析

* 创建工作空间
聊天设置 -> 设置ollama作为llm供应商
设置ollama model为离线安装的deepseek-r1:8b
向量数据库 -> 使用默认配置
代理配置  -> 向量化引擎(Embedder首选项) 选择 ollama 后 ,使用 nomic-embed-text

* 上传本地资料
点击工作空间
点击上传按钮
根据需求上传文件或连接你的数据库
保存并向量化


