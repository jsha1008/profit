FROM openjdk:8
ENV PT_VERSION=2.1.25
ENV PT_DL=https://github.com/taniman/profit-trailer/releases/download/${PT_VERSION}/ProfitTrailer-${PT_VERSION}.zip
VOLUME ["/ap/ProfitTrailer"]
ADD ${PT_DL} /opt
ADD docker-entry.sh /
CMD ["/docker-entry.sh"]
EXPOSE 8082
