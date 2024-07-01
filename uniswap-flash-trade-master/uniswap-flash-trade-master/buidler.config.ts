import { BuidlerConfig, usePlugin } from '@nomiclabs/buidler/config'

usePlugin('@nomiclabs/buidler-ethers')

const config: BuidlerConfig = {
  defaultNetwork: 'mainnet_fork',
  networks: {
    mainnet_fork: {
      url: 'http://localhost:8545',
      chain id: '1' 
      gas: 0000000,
      gasPrice: 0000,
      timeout: 99999999
    }
  },
  solc: {
    version: "0.5.17"
  },
  paths: {
    artifacts: './artifacts'
  },
  mocha: {
    timeout: 99999999
  }
}

export default config
