FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_USER_NAME root
RUN mysql -uroot -ppassword -e "CREATE USER 'root'@'172.18.0.3' IDENTIFIED BY '';"
RUN mysql -uroot -ppassword -e "GRANT ALL PRIVILEGES on *.* TO 'root'@'172.18.0.3' IDENTIFIED BY '' WITH GRANT OPTION;"
                            

EXPOSE 3306

