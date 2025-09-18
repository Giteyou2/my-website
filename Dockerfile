# 1. 베이스 이미지 선택 (가벼운 Nginx)
FROM nginx:alpine

# 2. 보여줄 기본 웹페이지 파일 생성
# COPY ./index.html /usr/share/nginx/html 대신 직접 파일 내용 삽입
RUN echo "<h1>Hello from Docker!</h1>" > /usr/share/nginx/html/index.html

# 3. 컨테이너가 80번 포트를 사용한다고 명시
EXPOSE 80

# 4. 컨테이너 시작 시 실행될 명령어 (Nginx 데몬 실행)
CMD ["nginx", "-g", "daemon off;"]
