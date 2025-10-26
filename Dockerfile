# 1 Base Image (Operating System)

FROM openjdk:17-jdk-alpine

# 2 WORKDIR for the application

WORKDIR /app

# 3 COPY code from your HOST to your container (working directory)

COPY src/Main.java /app/Main.java
COPY quotes.txt quotes.txt

# 4 RUN the commands to install libs or to compile code

RUN javac Main.java

# 5 Expose the port

EXPOSE 8000

# 6 Serve the app / keep it running

CMD ["java","Main"]


