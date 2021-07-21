FROM  node:latest
RUN mkdir -p /home/node/yan
WORKDIR /home/node/yan
COPY . .
RUN sed -i 's|localhost|URL|' app.js
RUN npm install
EXPOSE 3000
CMD ["npm","start"]
