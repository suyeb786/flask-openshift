From centos:7
RUN yum install epel-release -y && yum install python-pip -y && pip install Flask && mkdir /tmp/suyeb
USER 11111
RUN chgrp -R 0 /tmp/suyeb && chmod -R g=u /tmp/suyeb
COPY index.py /tmp/suyeb/index.py
EXPOSE 5000
CMD ["python", "/tmp/suyeb/index.py"]