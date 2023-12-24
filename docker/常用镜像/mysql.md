### mysql

``` shell


docker run -itd --name mysql-21300 -p 21300:3306 -e MYSQL_ROOT_PASSWORD=123456 --restart=always mysql:5.7 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci

docker run -itd --name mysql-21301 -p 21301:3306 -e MYSQL_ROOT_PASSWORD=123456 --restart=always mysql:5.7 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci

docker run -itd --name mysql-21302 -p 21302:3306 -e MYSQL_ROOT_PASSWORD=123456 --restart=always mysql:5.7 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci

docker run -itd --name mysql-21303 -p 21303:3306 -e MYSQL_ROOT_PASSWORD=123456 --restart=always mysql:5.7 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci

docker run -itd --name mysql-21304 -p 21304:3306 -e MYSQL_ROOT_PASSWORD=123456 --restart=always mysql:5.7 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci


docker run -itd --name mysql-12306 -p 12306:3306 -e MYSQL_ROOT_PASSWORD=123456 -v /d/data/coos/mysql:/var/lib/mysql mysql:5.6.36 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci


docker run -itd --name mysql-12306 -p 12306:3306 -e MYSQL_ROOT_PASSWORD=123456 -v /d/data/coos/mysql:/var/lib/mysql mysql:5.6.36 mysqld --console --skip-grant-tables --shared-memory

docker run -itd --name mysql-12306 -p 12306:3306 -e MYSQL_ROOT_PASSWORD=123456 -v /d/data/coos/mysql:/var/lib/mysql mysql:5.6.36 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci


docker run -itd --name mysql-3306-11306 -p 3306:3306 -p 11306:3306 -e MYSQL_ROOT_PASSWORD=123456 mysql:5.7 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci

docker run -itd --name mysql-3306-11306 -p 3306:3306 -p 11306:3306 -e MYSQL_ROOT_PASSWORD=123456 --restart=always mysql:5.7 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci

docker run -itd --name mysql-nacos -m 1024m -p 38848:3306 -e MYSQL_ROOT_PASSWORD=123456 --restart=always mysql:5.7 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci

docker run -itd --name mysql-3306 -m 1024m -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 --restart=always mysql:5.7 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci

docker run -itd --name mysql-3306 -m 1024m -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 mysql:5.7 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
#运行一个容器
docker run -itd --name mysql-3306 -m 256m -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 --ulimit nofile=65536:65536 -v /data/mysql:/var/lib/mysql --restart=always mysql:5.7 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
#停止容器
docker stop mysql-3306
#删除容器
docker rm mysql-3306
```
