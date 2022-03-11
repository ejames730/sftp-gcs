FROM node:testing
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 9022
CMD ["node", "sftp-gcs.js", "--bucket", "jemling-test01", "--port", "9022" "--username", "jemling", "--password", "itistruethatweneedmoregoodpeople"]
