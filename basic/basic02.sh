# 로그 확인

# 포그라운드 실행
docker run -p 9922:80 --name ngx1 nginx

# Ctrl + C 눌러서 종료 가능

# 기존 실행 후, 중지한 컨테이너 삭제
docker rm -f ngx1

# 다시 백그라운드 실행
docker run -d -p 9922:80 --name ngx1 nginx

#로그 출력
docker logs 컨테이너이름 or 컨테이너ID

# 끝부분 몇줄만 출력
docker logs -tail 출력할줄수 컨테이너이름or컨테이너ID

docker logs --tail 10 ngx1
docker logs --tail 5 ngx1

# 로그를 계속 추적 출력 follow
docker logs -f ngx1

# --since Xs    ~부터
# -- util Xs    ~까지

docker logs --since 20s ngx1