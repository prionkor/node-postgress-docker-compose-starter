FROM node:14.15.4-alpine

# source directory
WORKDIR /app

# dependency file (package.json and package-lock.json)
COPY package.json .

# dependency install file
RUN yarn install && yarn global add npx

# copy the sources
COPY . .

# listener
EXPOSE 8080


ENTRYPOINT ["./entrypoint.sh"]

# command to run
CMD [ "npm", "run", "start" ]
