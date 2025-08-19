#도커 볼륨 조회

docker volume ls

#도커 볼륨 생성

docker volume create pg-storage

docker run --name pgdb -d \
 -v pg-storage:/var/lib/postgresql/data \
 -e POSTGRES_PASSWORD=pgpw \
 -e POSTGRES_USER=postgres \
 -e POSTGRES_DB=mypgdb \
 -p 5432:5432 \
 postgres

 #postgresql 에 접속하여, 확인용 테이블 생성
 # vs code extension 설치 PostGreSQL Client Tool

 #테이블 생성
 create table test_table (
    id DECIMAL,
    name VARCHAR(12)
 )
 

 #테이블 존재여부 조회
 select *
 from pg_table

#mysql
docker run -d -e MYSQL_ROOT_PASSWORD=pw12341234 \
 -v mysql-storage:/var/lib/mysql \
 -p 3306:3306 --name mysql mysql