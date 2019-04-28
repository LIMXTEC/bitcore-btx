export type Protocol = 'BTC' | 'BCH' | 'BTX';
export type Code = 'BTC' | 'BCH' | 'BTX' | 'tBTC' | 'tBCH' | 'tBTX';
export type Network = 'mainnet' | 'testnet' | 'regtest';

export interface Chain {
  code: Code;
  name: string;
  network: Network;
  protocol: Protocol;
}

export const BCH: Chain = {
  code: 'BCH',
  name: 'Bitcoin Cash',
  network: 'mainnet',
  protocol: 'BCH'
};

export const tBCH: Chain = {
  code: 'tBCH',
  name: 'Bitcoin Cash Testnet',
  network: 'testnet',
  protocol: 'BCH'
};

export const BTC: Chain = {
  code: 'BTC',
  name: 'Bitcoin',
  network: 'mainnet',
  protocol: 'BTC'
};

export const tBTC: Chain = {
  code: 'tBTC',
  name: 'Bitcoin Testnet',
  network: 'testnet',
  protocol: 'BTC'
};

export const BTX: Chain = {
  code: 'BTX',
  name: 'Bitcore',
  network: 'mainnet',
  protocol: 'BTX'
};

export const tBTX: Chain = {
  code: 'tBTX',
  name: 'Bitcore Testnet',
  network: 'testnet',
  protocol: 'BTX'
};

export const Chains = {
  BCH,
  tBCH,
  BTC,
  tBTC,
  BTX,
  tBTX
};
