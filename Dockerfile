FROM circleci/node:latest-browsers

WORKDIR /usr/src/app/
USER root
COPY package.json ./
RUN yarn --registry http://registry.npm.taobao.org/

COPY ./ ./

RUN npm run test:all

CMD ["npm", "run", "build"]
