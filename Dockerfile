FROM ubuntu:22.04

LABEL maintainer="mmorot@student.42lyon.fr"
LABEL version="1.0.3"
LABEL description="francinette image 42"


RUN apt update -y
RUN apt install git -y
WORKDIR /
RUN git clone --recursive https://github.com/xicodomingues/francinette.git
RUN apt update -y
RUN apt upgrade -y
RUN apt install gcc clang libpq-dev libbsd-dev libncurses-dev valgrind -y
RUN apt install python3-dev python3-pip -y
RUN apt install python3-dev python3-venv python3-wheel -y
RUN pip3 install wheel
RUN python3 -m venv venv
RUN . venv/bin/activate
WORKDIR /francinette
RUN pip3 install -r requirements.txt
RUN pip3 install norminette
RUN chmod 777 tester.sh
CMD ["/francinette/tester.sh"]
