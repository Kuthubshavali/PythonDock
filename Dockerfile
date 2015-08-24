FROM ubuntu:14.04 
MAINTAINER Mr.Mohammed Syed 
RUN sudo apt-get update
RUN sudo apt-get -y install mysql-server
RUN sudo apt-get -y install mysql
RUN mysql -u root -e  SET PASSWORD = PASSWORD('root@123')
RUN mysql -u localhost -e  SET PASSWORD = PASSWORD('root@123')
RUN sudo service  mysql restart
RUN sudo apt-get install -y python3.4
RUN sudo apt-get install -y python-pip
RUN sudo apt-get install -y git
RUN sudo pip install Flask==0.10.1
RUN mkdir -p /usr/local/PythonWebApp/ 
RUN echo $PATH
RUN export PATH=/usr/local/PythonWebApp/:$PATH 
RUN git clone https://github.com/Kuthubshavali/PythonDock.git
RUN cp -r PythonDock /usr/local/PythonWebApp/
EXPOSE 80
WORKDIR /usr/local/PythonWebApp/PythonDock/

