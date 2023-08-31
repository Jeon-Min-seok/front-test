FROM ubuntu:focal								#베이스 이미지생성
RUN apt update; apt install -y apache2			#아파치 설치
ADD index.html /var/www/html/index.html			#html파일 추가
EXPOSE 80/tcp									#80포트 설정
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]	#아파치 실행
