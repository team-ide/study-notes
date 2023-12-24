### nginx

``` shell
#运行一个容器
docker run -itd --name nginx-80 -m 128m -p 80:80 -v /data/nginx/nginx.conf:/etc/nginx/nginx.conf --restart=always nginx:1.23.3

docker run -itd --name nginx-80 -m 128m -p 80:80 -v /e/nginx/nginx.conf:/etc/nginx/nginx.conf -v /e/nginx/html:/data --restart=always nginx:1.23.3

#停止容器
docker stop nginx-80
#删除容器
docker rm nginx-80
```