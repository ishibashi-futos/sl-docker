FROM alpine:3.9

RUN apk add make alpine-sdk ncurses-dev --no-cache --virtual devtool 
RUN wget https://github.com/gmkou/sl/archive/master.zip && unzip ./master.zip
WORKDIR /sl-master
RUN make

CMD ["/sl-master/sl"]
