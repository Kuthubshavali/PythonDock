FROM ubuntu:14.04 
MAINTAINER Mr.Mohammed Syed 
RUN sudo apt-get updates
RUN sudo apt-get -y install python3.4
RUN sudo apt-get -y install python-pip
RUN sudo pip install Flask-0.10.1
RUN mkdir -p /usr/local/PythonWebApp/ 
RUN echo $PATH RUN export PATH=/usr/local/PythonWebApp/:$PATH 
RUN git clone https://github.com/Kuthubshavali/PythonDock.git
RUN mv PythonDock /usr/local/PythonWebApp/
