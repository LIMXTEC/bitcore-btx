FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY lerna.json ./

COPY ./packages/bitcore-build/package.json ./packages/bitcore-build/package.json
COPY ./packages/bitcore-mnemonic/package.json ./packages/bitcore-mnemonic/package.json
COPY ./packages/bitcore-lib/package.json ./packages/bitcore-lib/package.json
COPY ./packages/bitcore-lib-cash/package.json ./packages/bitcore-lib-cash/package.json
COPY ./packages/bitcore-lib-btx/package.json ./packages/bitcore-lib-btx/package.json
COPY ./packages/bitcore-p2p/package.json ./packages/bitcore-p2p/package.json
COPY ./packages/bitcore-p2p-cash/package.json ./packages/bitcore-p2p-cash/package.json
COPY ./packages/bitcore-p2p-btx/package.json ./packages/bitcore-p2p-btx/package.json
COPY ./packages/bitcore-wallet-client/package.json ./packages/bitcore-wallet-client/package.json
COPY ./packages/bitcore-client/package.json ./packages/bitcore-client/package.json
COPY ./packages/bitcore-wallet/package.json ./packages/bitcore-wallet/package.json
COPY ./packages/bitcore-wallet-client/package.json ./packages/bitcore-wallet-client/package.json
COPY ./packages/bitcore-wallet-service/package.json ./packages/bitcore-wallet-service/package.json
COPY ./packages/bitcore-node/package.json ./packages/bitcore-node/package.json
COPY ./packages/insight/package.json ./packages/insight/package.json
COPY ./packages/crypto-wallet-core/package.json ./packages/crypto-wallet-core/package.json

RUN ./node_modules/.bin/lerna bootstrap

#https://github.com/bitpay/bitcore/issues/2119
RUN ./node_modules/.bin/lerna run --scope=bitcore-client compile

COPY . .
EXPOSE 3000
EXPOSE 8100
#CMD ["./node_modules/.bin/lerna", "run", "start"]
#CMD ["npm", "--prefix=./packages/bitcore-node", "start"]
#CMD ["npm", "--prefix=./packages/insight", "start"]

#https://github.com/bitpay/bitcore/issues/2119
CMD ["./node_modules/.bin/lerna", "run", "--scope=bitcore-node", "start", "--stream"]
