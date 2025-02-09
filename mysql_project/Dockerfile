# Dockerfile
# MySQL 공식 이미지를 기반으로 함
FROM mysql:latest

# SQL 덤프 파일을 이미지에 복사
COPY ./dump/backup.sql /docker-entrypoint-initdb.d/

# 환경변수 설정
# 환경변수는 .env 파일에 저장
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
ENV MYSQL_DATABASE=${MYSQL_DATABASE}
ENV MYSQL_USER=${MYSQL_USER}
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}
ENV TZ=${TZ}

# 타임존 설정
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# MySQL 설정 파일 복사 (필요한 경우)
COPY my.cnf /etc/mysql/conf.d/

# RUN echo "[mysqld]\nbind-address=0.0.0.0" > /etc/mysql/my.cnf

# 3306 포트 노출
EXPOSE 3306

# MySQL 서버 실행
CMD ["mysqld"]

# build
# docker build -t mysql-custom .

# run
# docker run -d --name mysql-container -p 13306:3306 \
#   --env-file .env \ 
#   -v mysql-data:/var/lib/mysql \
#   -p 13306:3306 ^
#   --network my-network \
#   mysql-custom

# tagging for push
# docker tag mysql-custom:latest <dockerhub_id>/mysql-custom:latest

# push to dockerhub
# docker push <dockerhub_id>/mysql-custom:latest