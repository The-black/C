FROM node 

RUN mkdir /climacell
COPY . /climacell
WORKDIR /climacell
EXPOSE 3000

CMD ["/bin/bash", "-c", "cd /climacell && npm run start"]
