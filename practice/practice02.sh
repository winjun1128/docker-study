1. docker run -d -p 8080:80 --name web1 nginx

2. docker run -d -e MYSQL_ROOT_PASSWORD=rootpw123 -p 3307:3306 --name mymysql mysql

3. docker run -d --name myredis -e REDIS_PASSWORD=secret123-p 6379:6379 redis