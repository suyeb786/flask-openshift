From centos:7
RUN yum install epel-release -y && yum install python-pip -y && pip install Flask && mkdir /root/suyeb
RUN chgrp -R 0 /root/suyeb && chmod -R g=u /root/suyeb
COPY index.py /root/suyeb/index.py
USER 11111
EXPOSE 5000
CMD ["python", "/root/suyeb/index.py"]