FROM node:18-alpine

WORKDIR /myapp
COPY . . 
RUN npm ci 
RUN serve -s build 

EXPOSE 3000
CMD ["npx","serve","build"]