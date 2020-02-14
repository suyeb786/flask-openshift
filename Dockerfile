From centos:7
RUN yum install epel-release -y && yum install python-pip -y && pip install Flask && mkdir /root/suyeb
COPY index.py /root/suyeb/index.py
EXPOSE 5000
CMD ["python", "/root/suyeb/index.py"]