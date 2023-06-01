# 베이스 이미지 선택
FROM ubuntu:latest

# 작성자 정보
LABEL maintainer="ASC dusdjhyeon <dusdj0813@khu.ac.kr>"

# ubuntu 패키지 매니저 업데이트 & nginx 설치
# -y를 통해 설치 도중 발생하는 확인메시지에 자동으로 yes 응답
RUN apt-get update
RUN apt-get install -y nginx

# this is a ubuntu container라는 메시지 출력
RUN echo "this is a ubuntu container"

# 현재 디렉토리를 /etc/nginx로 설정
# 이 이후 실행되는 명령어는 해당 디렉토리에서 실행
WORKDIR /etc/nginx

# 컨테이너 시작 시 실행할 명령어 (nginx를 백그라운드에서 실행)
CMD ["nginx", "-g", "daemon off;"]

# 포트 80 노출
EXPOSE 80