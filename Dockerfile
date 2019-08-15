#De la imagen que partimos
FROM openjdk:8-jre-alpine

RUN apk add --no-cache tzdata
ENV TZ='America/Lima'
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apk --update add fontconfig ttf-dejavu

#Directorio de trabajo
WORKDIR /

#Copiamos el -jar en el directorio de trabajo
RUN mkdir app && chmod 777 app
COPY target/api-0.0.1-SNAPSHOT.jar /app
WORKDIR /app

#Exponemos el puerto 8085
EXPOSE 8082

#Comando que se ejecutarÃ¡ una vez ejecutemos el contendor
CMD ["java","-jar","api-0.0.1-SNAPSHOT.jar"]
