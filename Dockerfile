# node
FROM node:15.5.1-alpine3.10

# mirror
RUN echo 'http://mirrors.aliyun.com/alpine/v3.5/main' > /etc/apk/repositories
RUN echo 'http://mirrors.aliyun.com/alpine/v3.5/community' >>/etc/apk/repositories

# timeZone
RUN apk update && apk add tzdata
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/Shanghai" > /etc/timezone

WORKDIR /app
COPY . /app

# npm
RUN yarn cache clean
RUN yarn config set registry 'https://registry.npmjs.org/' -g
RUN yarn install --network-timeout 600000
RUN yarn build

# script
CMD [ "yarn", "start" ]

# port
EXPOSE 80
