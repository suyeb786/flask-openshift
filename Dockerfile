From centos:7
RUN yum install epel-release -y && yum install python-pip -y && pip install Flask && pip install flask_api && mkdir /tmp/suyeb
RUN chgrp -R 0 /tmp/suyeb && chmod -R g=u /tmp/suyeb
COPY index.py /tmp/suyeb/index.py
EXPOSE 5000
CMD ["python", "/tmp/suyeb/index.py"]