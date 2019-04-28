const BitcoreLibBtx = require('bitcore-lib-btx');
import { AbstractBitcoreLibDeriver } from '../btc';
export class BtxDeriver extends AbstractBitcoreLibDeriver {
  bitcoreLib = BitcoreLibBtx;
}
