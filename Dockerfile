#FROM node:latest
#ADD . ./sourcebook
#WORKDIR ./sourcebook/docs
#RUN npm install -g docsify-cli@latest
#EXPOSE 3000/tcp
#ENTRYPOINT docsify serve .

FROM nginx
ADD . ./sourcebook
WORKDIR ./sourcebook/docs
COPY nginx /etc/nginx/conf.d
EXPOSE 3000

