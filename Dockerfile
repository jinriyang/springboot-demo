FROM r.addops.soft.360.cn/qixiao/pipeline-base-image:1.0
VOLUME /tmp
ADD target/*.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
