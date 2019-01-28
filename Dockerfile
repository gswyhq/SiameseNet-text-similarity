FROM python:3.5.6-stretch

# RUN echo `python --version`

ENV MYDIR /chat_bot

WORKDIR /$MYDIR

COPY . /$MYDIR/

RUN cd /$MYDIR && pip3 install -r requirements.txt -i http://pypi.douban.com/simple --trusted-host=pypi.douban.com
#COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 8000

#ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/bash"]

# docker build -t gswyhq/siamesenet-text-similarity -f Dockerfile .
