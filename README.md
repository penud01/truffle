# truffle

Installed truffle on the local machine using the npm command:
npm install truffle -g
unboxed the directory to get the basic : contracts, migrations and test codes.
Installed plugin: Solidity on visual studio.
version used: pragma solidity 0.5.1
Created a new contract: Helloworld - basic contact the prints out a text
Made changes to truffle-config file with respect to our current colidity version.
Compiled the contract: truffle compile
This command compiles all the contracts in the contract folder.
Once compiled, truffle creates respective json files for each contract to be deployed to the etherum blockchain. These json files are present in the build/contract folder.
To deploy the contract , we need to create a migration file. 
Command: truffle develop - brings up few accounts, addresses and keys.
once connected to local instance, run command migrate to deploy.
If you try To redeploy an existing code : truffle gives an alert to inform no new updates.
To redply a contract on a local chain: migrate --reset #replaces the code
Testing:  
Multiple contracts can be tested in a file, tests are created by giving the "it" command and write a test case.
Run the command: truffle test, Output gives out the number of tests passed.

Below is the output:


truffle(develop)> instance.hello()
'new message'
truffle(develop)> compile

Compiling your contracts...
===========================
> Compiling ./contracts/Helloworld2.sol
> Artifacts written to /Users/deepu/Documents/Truffle/build/contracts
> Compiled successfully using:
   - solc: 0.5.16+commit.9c3226ce.Emscripten.clang
truffle(develop)> migrate --reset

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.


Starting migrations...
======================
> Network name:    'develop'
> Network id:      5777
> Block gas limit: 6721975 (0x6691b7)


1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0x181f90c3f0f9d2691ab5f8518d40514bc2dd980c86f77eb200436fc3a5e1f886
   > Blocks: 0            Seconds: 0
   > contract address:    0x84D8Aa5278565EcDdf528828FeF91D42aaFD8e91
   > block number:        11
   > block timestamp:     1665773359
   > account:             0xda0c5A782e7e10cb8C7e1f7265b0E64AAd3C49A4
   > balance:             97.995687750059185965
   > gas used:            193243 (0x2f2db)
   > gas price:           2.742545416 gwei
   > value sent:          0 ETH
   > total cost:          0.000529977703824088 ETH

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.000529977703824088 ETH


2_helloworld_migration.js
=========================

   Replacing 'Helloworld'
   ----------------------
   > transaction hash:    0x568c73f6faff7bf626e270d0ed47aeab29093c71ac5b27b9fbddafab0e2a1937
   > Blocks: 0            Seconds: 0
   > contract address:    0x6272800a6507E88610B399C9D3283776449B6F99
   > block number:        13
   > block timestamp:     1665773359
   > account:             0xda0c5A782e7e10cb8C7e1f7265b0E64AAd3C49A4
   > balance:             97.994589381236930582
   > gas used:            362495 (0x587ff)
   > gas price:           2.687588087 gwei
   > value sent:          0 ETH
   > total cost:          0.000974237243597065 ETH


Exiting: Review successful transactions manually by checking the transaction hashes above on Etherscan.


TypeError: Helloworld.message is not a function
    at /Users/deepu/Documents/Truffle/migrations/2_helloworld_migration.js:7:34
    at processTicksAndRejections (node:internal/process/task_queues:96:5)
truffle(develop)> migrate --reset

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.


Starting migrations...
======================
> Network name:    'develop'
> Network id:      5777
> Block gas limit: 6721975 (0x6691b7)


1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0x456791df31979d88c07555d6422800a182288dd921317869e1f10731abaedb33
   > Blocks: 0            Seconds: 0
   > contract address:    0xf50B5a96638a19275D3B7945F2564556b8382042
   > block number:        14
   > block timestamp:     1665773384
   > account:             0xda0c5A782e7e10cb8C7e1f7265b0E64AAd3C49A4
   > balance:             97.994074066199366184
   > gas used:            193243 (0x2f2db)
   > gas price:           2.666668586 gwei
   > value sent:          0 ETH
   > total cost:          0.000515315037564398 ETH

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.000515315037564398 ETH


2_helloworld_migration.js
=========================

   Replacing 'Helloworld'
   ----------------------
   > transaction hash:    0x01c10e031713a31113eb42425bf4dd84e59b8239416fa076b90a5f08f28a36a3
   > Blocks: 0            Seconds: 0
   > contract address:    0x33fE70C38A4847BF0a5959235C1FFfE636099d76
   > block number:        16
   > block timestamp:     1665773384
   > account:             0xda0c5A782e7e10cb8C7e1f7265b0E64AAd3C49A4
   > balance:             97.993000031704688795
   > gas used:            362495 (0x587ff)
   > gas price:           2.628903863 gwei
   > value sent:          0 ETH
   > total cost:          0.000952964505818185 ETH


   Deploying 'HelloworldPermanent'
   -------------------------------
   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.000952964505818185 ETH

Summary
=======
> Total deployments:   2
> Final cost:          0.001468279543382583 ETH


truffle(develop)> let instance = await HelloworldPermanent.deployed()
Uncaught:
Error: HelloworldPermanent has not been deployed to detected network (network/artifact mismatch)
    at processTicksAndRejections (node:internal/process/task_queues:96:5)
    at runMicrotasks (<anonymous>)
    at Function.deployed (/usr/local/lib/node_modules/truffle/build/webpack:/packages/contract/lib/contract/constructorMethods.js:83:1)
    at Object.checkNetworkArtifactMatch (/usr/local/lib/node_modules/truffle/build/webpack:/packages/contract/lib/utils/index.js:256:1)
truffle(develop)> migrate --reset

Compiling your contracts...
===========================
> Compiling ./contracts/Helloworld2.sol
> Artifacts written to /Users/deepu/Documents/Truffle/build/contracts
> Compiled successfully using:
   - solc: 0.5.16+commit.9c3226ce.Emscripten.clang


Starting migrations...
======================
> Network name:    'develop'
> Network id:      5777
> Block gas limit: 6721975 (0x6691b7)


1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0xc5757af66106b40bb601d15c7e09e0162ba3eed843b6bf63f9c6e83d516d4802
   > Blocks: 0            Seconds: 0
   > contract address:    0xC60E0976319ebcD4b95BaE3fD046551196B0F0e9
   > block number:        18
   > block timestamp:     1665773510
   > account:             0xda0c5A782e7e10cb8C7e1f7265b0E64AAd3C49A4
   > balance:             97.99242266036825419
   > gas used:            193243 (0x2f2db)
   > gas price:           2.600334619 gwei
   > value sent:          0 ETH
   > total cost:          0.000502496462779417 ETH

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.000502496462779417 ETH


2_helloworld_migration.js
=========================

   Replacing 'Helloworld'
   ----------------------
   > transaction hash:    0xe7ad52ee88e113146aa7a4b4b18fe2ac9b31364e2466d6f88a927408f18b76d0
   > Blocks: 0            Seconds: 0
   > contract address:    0xd6cC83d937e6a1d952744B278Aa7297f00a6070e
   > block number:        20
   > block timestamp:     1665773510
   > account:             0xda0c5A782e7e10cb8C7e1f7265b0E64AAd3C49A4
   > balance:             97.991369899725392577
   > gas used:            362495 (0x587ff)
   > gas price:           2.577600227 gwei
   > value sent:          0 ETH
   > total cost:          0.000934367194286365 ETH


   Deploying 'HelloworldPermanent'
   -------------------------------
   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.000934367194286365 ETH

Summary
=======
> Total deployments:   2
> Final cost:          0.001436863657065782 ETH


truffle(develop)> let instance = await HelloworldPermanent.deployed()
Uncaught:
Error: HelloworldPermanent has not been deployed to detected network (network/artifact mismatch)
    at processTicksAndRejections (node:internal/process/task_queues:96:5)
    at runMicrotasks (<anonymous>)
    at Function.deployed (/usr/local/lib/node_modules/truffle/build/webpack:/packages/contract/lib/contract/constructorMethods.js:83:1)
    at Object.checkNetworkArtifactMatch (/usr/local/lib/node_modules/truffle/build/webpack:/packages/contract/lib/utils/index.js:256:1)
truffle(develop)>  migrate --reset

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.


Starting migrations...
======================
> Network name:    'develop'
> Network id:      5777
> Block gas limit: 6721975 (0x6691b7)


1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0xcb013ce7b8cb2afbaa0e27ba79b1de46b13236755dba1d01701282b133ce373a
   > Blocks: 0            Seconds: 0
   > contract address:    0xaE1F137fB0238D1F4b8B8Fb469b32a85F3BDbc98
   > block number:        22
   > block timestamp:     1665773637
   > account:             0xda0c5A782e7e10cb8C7e1f7265b0E64AAd3C49A4
   > balance:             97.990801550567946863
   > gas used:            193243 (0x2f2db)
   > gas price:           2.56040152 gwei
   > value sent:          0 ETH
   > total cost:          0.00049477967092936 ETH

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.00049477967092936 ETH


2_helloworld_migration.js
=========================

   Replacing 'Helloworld'
   ----------------------
   > transaction hash:    0xe73a25925c2c0165415b3c723bc42caacc04747dc7c21fe707abac6347fc34e5
   > Blocks: 0            Seconds: 0
   > contract address:    0xEE85be91dD4B37c2Da7ACdb6ab2c82beA70F9526
   > block number:        24
   > block timestamp:     1665773637
   > account:             0xda0c5A782e7e10cb8C7e1f7265b0E64AAd3C49A4
   > balance:             97.98976159680011459
   > gas used:            362495 (0x587ff)
   > gas price:           2.546715399 gwei
   > value sent:          0 ETH
   > total cost:          0.000923171598560505 ETH


   Deploying 'HelloworldPermanent'
   -------------------------------
   > transaction hash:    0xab6367de6ac26c9b69dab3e7dfe1517195b44568f679e798f27a27f1c6764bf5
   > Blocks: 0            Seconds: 0
   > contract address:    0x36dD9cBfe284C3CCf6A6BbcAF31DCfff8044cB17
   > block number:        25
   > block timestamp:     1665773637
   > account:             0xda0c5A782e7e10cb8C7e1f7265b0E64AAd3C49A4
   > balance:             97.989335556562031116
   > gas used:            167633 (0x28ed1)
   > gas price:           2.541505778 gwei
   > value sent:          0 ETH
   > total cost:          0.000426040238083474 ETH

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.001349211836643979 ETH

Summary
=======
> Total deployments:   3
> Final cost:          0.001843991507573339 ETH


truffle(develop)> let instance = await HelloworldPermanent.deployed()
evalmachine.<anonymous>:1
let instance = global.__await_outside_result; void delete global.__await_outside_result;
^

Uncaught SyntaxError: Identifier 'instance' has already been declared
truffle(develop)> instance = await HelloworldPermanent.deployed()
TruffleContract {
  constructor: [Function: TruffleContract] {
    _constructorMethods: {
      configureNetwork: [Function: configureNetwork],
      setProvider: [Function: setProvider],
      new: [Function: new],
      at: [AsyncFunction: at],
      deployed: [AsyncFunction: deployed],
      defaults: [Function: defaults],
      hasNetwork: [Function: hasNetwork],
      isDeployed: [Function: isDeployed],
      detectNetwork: [AsyncFunction: detectNetwork],
      setNetwork: [Function: setNetwork],
      setNetworkType: [Function: setNetworkType],
      setWallet: [Function: setWallet],
      resetAddress: [Function: resetAddress],
      link: [Function: link],
      clone: [Function: clone],
      addProp: [Function: addProp],
      toJSON: [Function: toJSON],
      decodeLogs: [Function: decodeLogs]
    },
    _properties: {
      contract_name: [Object],
      contractName: [Object],
      gasMultiplier: [Object],
      timeoutBlocks: [Object],
      autoGas: [Object],
      numberFormat: [Object],
      abi: [Object],
      metadata: [Function: metadata],
      network: [Function: network],
      networks: [Function: networks],
      address: [Object],
      transactionHash: [Object],
      links: [Function: links],
      events: [Function: events],
      binary: [Function: binary],
      deployedBinary: [Function: deployedBinary],
      unlinked_binary: [Object],
      bytecode: [Object],
      deployedBytecode: [Object],
      sourceMap: [Object],
      deployedSourceMap: [Object],
      source: [Object],
      sourcePath: [Object],
      legacyAST: [Object],
      ast: [Object],
      compiler: [Object],
      schema_version: [Function: schema_version],
      schemaVersion: [Function: schemaVersion],
      updated_at: [Function: updated_at],
      updatedAt: [Function: updatedAt],
      userdoc: [Function: userdoc],
      devdoc: [Function: devdoc],
      networkType: [Object],
      immutableReferences: [Object],
      generatedSources: [Object],
      deployedGeneratedSources: [Object],
      db: [Object]
    },
    _property_values: {},
    _json: {
      contractName: 'HelloworldPermanent',
      abi: [Array],
      metadata: '{"compiler":{"version":"0.5.16+commit.9c3226ce"},"language":"Solidity","output":{"abi":[{"inputs":[{"internalType":"string","name":"_message","type":"string"}],"payable":false,"stateMutability":"nonpayable","type":"constructor"},{"constant":true,"inputs":[],"name":"message","outputs":[{"internalType":"string","name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"}],"devdoc":{"methods":{}},"userdoc":{"methods":{}}},"settings":{"compilationTarget":{"project:/contracts/Helloworld2.sol":"HelloworldPermanent"},"evmVersion":"istanbul","libraries":{},"optimizer":{"enabled":false,"runs":200},"remappings":[]},"sources":{"project:/contracts/Helloworld2.sol":{"keccak256":"0x7443f6ebc0b360b6a541887de5d14873f869564e2d6e3bbbbdb15d0f99738520","urls":["bzz-raw://4a777f41d0ccddddd8f8851825e9bc82c5fb5bf31ca61061eba6755376945d76","dweb:/ipfs/QmP9rVa9pGMfdFfeCo6c2UxVDLEr895dMqRqgNA84jakvE"]}},"version":1}',
      bytecode: '0x608060405234801561001057600080fd5b506040516103453803806103458339818101604052602081101561003357600080fd5b810190808051604051939291908464010000000082111561005357600080fd5b8382019150602082018581111561006957600080fd5b825186600182028301116401000000008211171561008657600080fd5b8083526020830192505050908051906020019080838360005b838110156100ba57808201518184015260208101905061009f565b50505050905090810190601f1680156100e75780820380516001836020036101000a031916815260200191505b50604052505050806000908051906020019061010492919061010b565b50506101b0565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061014c57805160ff191683800117855561017a565b8280016001018555821561017a579182015b8281111561017957825182559160200191906001019061015e565b5b509050610187919061018b565b5090565b6101ad91905b808211156101a9576000816000905550600101610191565b5090565b90565b610186806101bf6000396000f3fe608060405234801561001057600080fd5b506004361061002b5760003560e01c8063e21f37ce14610030575b600080fd5b6100386100b3565b6040518080602001828103825283818151815260200191508051906020019080838360005b8381101561007857808201518184015260208101905061005d565b50505050905090810190601f1680156100a55780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b60008054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156101495780601f1061011e57610100808354040283529160200191610149565b820191906000526020600020905b81548152906001019060200180831161012c57829003601f168201915b50505050508156fea265627a7a7231582095bd1f80443c7a7d6176f5397954e73fbf6df6b3de693965a940000718d25bc164736f6c63430005100032',
      deployedBytecode: '0x608060405234801561001057600080fd5b506004361061002b5760003560e01c8063e21f37ce14610030575b600080fd5b6100386100b3565b6040518080602001828103825283818151815260200191508051906020019080838360005b8381101561007857808201518184015260208101905061005d565b50505050905090810190601f1680156100a55780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b60008054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156101495780601f1061011e57610100808354040283529160200191610149565b820191906000526020600020905b81548152906001019060200180831161012c57829003601f168201915b50505050508156fea265627a7a7231582095bd1f80443c7a7d6176f5397954e73fbf6df6b3de693965a940000718d25bc164736f6c63430005100032',
      immutableReferences: undefined,
      generatedSources: undefined,
      deployedGeneratedSources: undefined,
      sourceMap: '25:146:0:-;;;91:77;8:9:-1;5:2;;;30:1;27;20:12;5:2;91:77:0;;;;;;;;;;;;;;;13:2:-1;8:3;5:11;2:2;;;29:1;26;19:12;2:2;91:77:0;;;;;;;;;;;;;19:11:-1;14:3;11:20;8:2;;;44:1;41;34:12;8:2;71:11;66:3;62:21;55:28;;123:4;118:3;114:14;159:9;141:16;138:31;135:2;;;182:1;179;172:12;135:2;219:3;213:10;330:9;325:1;311:12;307:20;289:16;285:43;282:58;261:11;247:12;244:29;233:115;230:2;;;361:1;358;351:12;230:2;384:12;379:3;372:25;420:4;415:3;411:14;404:21;;0:432;;91:77:0;;;;;;;;;;23:1:-1;8:100;33:3;30:1;27:10;8:100;;;99:1;94:3;90:11;84:18;80:1;75:3;71:11;64:39;52:2;49:1;45:10;40:15;;8:100;;;12:14;91:77:0;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;153:8;143:7;:18;;;;;;;;;;;;:::i;:::-;;91:77;25:146;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:::i;:::-;;;:::o;:::-;;;;;;;;;;;;;;;;;;;;;;;;;;;:::o;:::-;;;;;;;',
      deployedSourceMap: '25:146:0:-;;;;8:9:-1;5:2;;;30:1;27;20:12;5:2;25:146:0;;;;;;;;;;;;;;;;;;;59:21;;;:::i;:::-;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;23:1:-1;8:100;33:3;30:1;27:10;8:100;;;99:1;94:3;90:11;84:18;80:1;75:3;71:11;64:39;52:2;49:1;45:10;40:15;;8:100;;;12:14;59:21:0;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:::o',
      source: 'pragma solidity 0.5.16;\n' +
        '\n' +
        'contract HelloworldPermanent{\n' +
        '    string public message;\n' +
        '    \n' +
        '    constructor(string memory _message) public{\n' +
        '        message = _message;\n' +
        '    }\n' +
        '\n' +
        '}',
      sourcePath: '/Users/deepu/Documents/Truffle/contracts/Helloworld2.sol',
      ast: [Object],
      legacyAST: [Object],
      compiler: [Object],
      networks: [Object],
      schemaVersion: '3.4.10',
      updatedAt: '2022-10-14T18:53:57.737Z',
      networkType: 'ethereum',
      devdoc: [Object],
      userdoc: [Object],
      db: undefined
    },
    configureNetwork: [Function: bound configureNetwork],
    setProvider: [Function: bound setProvider],
    new: [Function: bound new] {
      estimateGas: [Function: bound estimateDeployment],
      request: [Function: bound requestDeployment]
    },
    at: [Function: bound at] AsyncFunction,
    deployed: [Function: bound deployed] AsyncFunction,
    defaults: [Function: bound defaults],
    hasNetwork: [Function: bound hasNetwork],
    isDeployed: [Function: bound isDeployed],
    detectNetwork: [Function: bound detectNetwork] AsyncFunction,
    setNetwork: [Function: bound setNetwork],
    setNetworkType: [Function: bound setNetworkType],
    setWallet: [Function: bound setWallet],
    resetAddress: [Function: bound resetAddress],
    link: [Function: bound link],
    clone: [Function: bound clone],
    addProp: [Function: bound addProp],
    toJSON: [Function: bound toJSON],
    decodeLogs: [Function: bound decodeLogs],
    enums: {},
    class_defaults: { from: '0xda0c5A782e7e10cb8C7e1f7265b0E64AAd3C49A4' },
    interfaceAdapter: Web3InterfaceAdapter { web3: [Web3Shim] },
    web3: Web3Shim {
      currentProvider: [Getter/Setter],
      _requestManager: [RequestManager],
      givenProvider: null,
      providers: [Object],
      _provider: [HttpProvider],
      setProvider: [Function (anonymous)],
      setRequestManager: [Function (anonymous)],
      BatchRequest: [Function: bound Batch],
      extend: [Function],
      version: '1.7.4',
      utils: [Object],
      eth: [Eth],
      shh: [Shh],
      bzz: [Bzz],
      networkType: 'ethereum'
    },
    currentProvider: HttpProvider {
      withCredentials: false,
      timeout: 0,
      headers: undefined,
      agent: undefined,
      connected: true,
      host: 'http://127.0.0.1:9545/',
      httpAgent: [Agent],
      send: [Function (anonymous)],
      _alreadyWrapped: true
    },
    network_id: '5777',
    disableConfirmationListener: undefined,
    ens: { enabled: false, registryAddress: null }
  },
  methods: {
    'message()': [Function (anonymous)] {
      call: [Function (anonymous)],
      sendTransaction: [Function (anonymous)],
      estimateGas: [Function (anonymous)],
      request: [Function (anonymous)]
    }
  },
  abi: [
    {
      inputs: [Array],
      payable: false,
      stateMutability: 'nonpayable',
      type: 'constructor',
      constant: undefined
    },
    {
      constant: true,
      inputs: [],
      name: 'message',
      outputs: [Array],
      payable: false,
      stateMutability: 'view',
      type: 'function',
      signature: '0xe21f37ce'
    }
  ],
  address: '0x36dD9cBfe284C3CCf6A6BbcAF31DCfff8044cB17',
  transactionHash: undefined,
  contract: Contract {
    setProvider: [Function (anonymous)],
    currentProvider: [Getter/Setter],
    _requestManager: RequestManager {
      provider: [HttpProvider],
      providers: [Object],
      subscriptions: Map(0) {}
    },
    givenProvider: null,
    providers: {
      WebsocketProvider: [Function: WebsocketProvider],
      HttpProvider: [Function: HttpProvider],
      IpcProvider: [Function: IpcProvider]
    },
    _provider: HttpProvider {
      withCredentials: false,
      timeout: 0,
      headers: undefined,
      agent: undefined,
      connected: true,
      host: 'http://127.0.0.1:9545/',
      httpAgent: [Agent],
      send: [Function (anonymous)],
      _alreadyWrapped: true
    },
    setRequestManager: [Function (anonymous)],
    BatchRequest: [Function: bound Batch],
    extend: [Function: ex] {
      formatters: [Object],
      utils: [Object],
      Method: [Function: Method]
    },
    clearSubscriptions: [Function (anonymous)],
    options: { address: [Getter/Setter], jsonInterface: [Getter/Setter] },
    handleRevert: [Getter/Setter],
    defaultCommon: [Getter/Setter],
    defaultHardfork: [Getter/Setter],
    defaultChain: [Getter/Setter],
    transactionPollingTimeout: [Getter/Setter],
    transactionPollingInterval: [Getter/Setter],
    transactionConfirmationBlocks: [Getter/Setter],
    transactionBlockTimeout: [Getter/Setter],
    blockHeaderTimeout: [Getter/Setter],
    defaultAccount: [Getter/Setter],
    defaultBlock: [Getter/Setter],
    methods: {
      message: [Function: bound _createTxObject],
      '0xe21f37ce': [Function: bound _createTxObject],
      'message()': [Function: bound _createTxObject]
    },
    events: { allEvents: [Function: bound ] },
    _address: '0x36dD9cBfe284C3CCf6A6BbcAF31DCfff8044cB17',
    _jsonInterface: [ [Object], [Object] ]
  },
  message: [Function (anonymous)] {
    call: [Function (anonymous)],
    sendTransaction: [Function (anonymous)],
    estimateGas: [Function (anonymous)],
    request: [Function (anonymous)]
  },
  sendTransaction: [Function (anonymous)],
  estimateGas: [Function (anonymous)],
  call: [Function (anonymous)],
  send: [Function (anonymous)],
  allEvents: [Function (anonymous)],
  getPastEvents: [Function (anonymous)]
}
truffle(develop)> instance.message()
'Hello world constructor '
truffle(develop)> .exit
deepu@Deepikas-Air Truffle % truffle test
Using network 'test'.


Compiling your contracts...
===========================
> Compiling ./test/TestMetaCoin.sol

CompileError: project:/test/TestMetaCoin.sol:2:1: ParserError: Source file requires different compiler version (current compiler is 0.5.16+commit.9c3226ce.Emscripten.clang - note that nightly builds are considered to be strictly less than the released version
pragma solidity ^0.8.13;
^----------------------^

Error: Truffle is currently using solc 0.5.16, but one or more of your contracts specify "pragma solidity ^0.8.13".
Please update your truffle config or pragma statement(s).
(See https://trufflesuite.com/docs/truffle/reference/configuration#compiler-configuration for information on
configuring Truffle to use a specific solc compiler version.)

Compilation failed. See above.
    at /usr/local/lib/node_modules/truffle/build/webpack:/packages/compile-solidity/dist/run.js:95:1
    at Generator.next (<anonymous>)
    at fulfilled (/usr/local/lib/node_modules/truffle/build/webpack:/packages/compile-solidity/dist/run.js:28:43)
Truffle v5.6.1 (core: 5.6.1)
Node v16.14.2
deepu@Deepikas-Air Truffle % truffle test
Using network 'test'.


Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.
/Users/deepu/Documents/Truffle/test/helloworld_test.js:7
        assert.equal(message. "Hello world constructor ")
                              ^^^^^^^^^^^^^^^^^^^^^^^^^^

SyntaxError: Unexpected string
    at Object.compileFunction (node:vm:352:18)
    at wrapSafe (node:internal/modules/cjs/loader:1032:15)
    at Module._compile (node:internal/modules/cjs/loader:1067:27)
    at Object.Module._extensions..js (node:internal/modules/cjs/loader:1157:10)
    at Module.load (node:internal/modules/cjs/loader:981:32)
    at Function.Module._load (node:internal/modules/cjs/loader:822:12)
    at Module.require (node:internal/modules/cjs/loader:1005:19)
    at require (node:internal/modules/cjs/helpers:102:18)
    at /usr/local/lib/node_modules/truffle/node_modules/mocha/lib/mocha.js:417:36
    at Array.forEach (<anonymous>)
    at Mocha.loadFiles (/usr/local/lib/node_modules/truffle/node_modules/mocha/lib/mocha.js:414:14)
    at Mocha.run (/usr/local/lib/node_modules/truffle/node_modules/mocha/lib/mocha.js:1015:10)
    at /usr/local/lib/node_modules/truffle/build/webpack:/packages/core/lib/testing/Test.js:156:1
    at new Promise (<anonymous>)
    at Object.run (/usr/local/lib/node_modules/truffle/build/webpack:/packages/core/lib/testing/Test.js:155:1)
    at processTicksAndRejections (node:internal/process/task_queues:96:5)
    at startGanacheAndRunTests (/usr/local/lib/node_modules/truffle/build/webpack:/packages/core/lib/commands/test/run.js:49:1)
    at Object.module.exports [as run] (/usr/local/lib/node_modules/truffle/build/webpack:/packages/core/lib/commands/test/run.js:106:1)
    at runCommand (/usr/local/lib/node_modules/truffle/build/webpack:/packages/core/lib/command-utils.js:201:1)
Truffle v5.6.1 (core: 5.6.1)
Node v16.14.2
deepu@Deepikas-Air Truffle % truffle test
Using network 'test'.


Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.
/Users/deepu/Documents/Truffle/test/helloworld_test.js:7
        assert.equal(message. "Hello world constructor")
                              ^^^^^^^^^^^^^^^^^^^^^^^^^

SyntaxError: Unexpected string
    at Object.compileFunction (node:vm:352:18)
    at wrapSafe (node:internal/modules/cjs/loader:1032:15)
    at Module._compile (node:internal/modules/cjs/loader:1067:27)
    at Object.Module._extensions..js (node:internal/modules/cjs/loader:1157:10)
    at Module.load (node:internal/modules/cjs/loader:981:32)
    at Function.Module._load (node:internal/modules/cjs/loader:822:12)
    at Module.require (node:internal/modules/cjs/loader:1005:19)
    at require (node:internal/modules/cjs/helpers:102:18)
    at /usr/local/lib/node_modules/truffle/node_modules/mocha/lib/mocha.js:417:36
    at Array.forEach (<anonymous>)
    at Mocha.loadFiles (/usr/local/lib/node_modules/truffle/node_modules/mocha/lib/mocha.js:414:14)
    at Mocha.run (/usr/local/lib/node_modules/truffle/node_modules/mocha/lib/mocha.js:1015:10)
    at /usr/local/lib/node_modules/truffle/build/webpack:/packages/core/lib/testing/Test.js:156:1
    at new Promise (<anonymous>)
    at Object.run (/usr/local/lib/node_modules/truffle/build/webpack:/packages/core/lib/testing/Test.js:155:1)
    at processTicksAndRejections (node:internal/process/task_queues:96:5)
    at startGanacheAndRunTests (/usr/local/lib/node_modules/truffle/build/webpack:/packages/core/lib/commands/test/run.js:49:1)
    at Object.module.exports [as run] (/usr/local/lib/node_modules/truffle/build/webpack:/packages/core/lib/commands/test/run.js:106:1)
    at runCommand (/usr/local/lib/node_modules/truffle/build/webpack:/packages/core/lib/command-utils.js:201:1)
Truffle v5.6.1 (core: 5.6.1)
Node v16.14.2
deepu@Deepikas-Air Truffle % truffle test
Using network 'test'.


Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.


  Contract: Helloworld
    ✔ constructor should set the message correctly


  1 passing (42ms)

deepu@Deepikas-Air Truffle % truffle test
Using network 'test'.


Compiling your contracts...
===========================
> Compiling ./contracts/Helloworld.sol
> Compilation warnings encountered:

    project:/contracts/Helloworld.sol:7:17: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    constructor(string memory _message) public{
                ^--------------------^

> Artifacts written to /var/folders/wq/xljysk6x6qn_rfnnr3c0xfjr0000gn/T/test--83961-dtujKCID3Qul
> Compiled successfully using:
   - solc: 0.5.16+commit.9c3226ce.Emscripten.clang


  Contract: Helloworld
    1) constructor should set the message correctly
    > No events were emitted


  0 passing (49ms)
  1 failing

  1) Contract: Helloworld
       constructor should set the message correctly:

      AssertionError: expected 'custom message' to equal 'Hello world constructor '
      + expected - actual

      -custom message
      +Hello world constructor 
      
      at Context.<anonymous> (test/helloworld_test.js:7:16)
      at processTicksAndRejections (node:internal/process/task_queues:96:5)



deepu@Deepikas-Air Truffle % truffle test
Using network 'test'.


Compiling your contracts...
===========================
> Compiling ./contracts/Helloworld.sol
> Compilation warnings encountered:

    project:/contracts/Helloworld.sol:7:17: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    constructor(string memory _message) public{
                ^--------------------^

> Artifacts written to /var/folders/wq/xljysk6x6qn_rfnnr3c0xfjr0000gn/T/test--84013-KEglkQy8V0ul
> Compiled successfully using:
   - solc: 0.5.16+commit.9c3226ce.Emscripten.clang


  Contract: Helloworld
    1) constructor should set the message correctly
    > No events were emitted
    2) owner should be accounts[0]
    > No events were emitted


  0 passing (65ms)
  2 failing

  1) Contract: Helloworld
       constructor should set the message correctly:

      AssertionError: expected 'custom message' to equal 'Hello world constructor '
      + expected - actual

      -custom message
      +Hello world constructor 
      
      at Context.<anonymous> (test/helloworld_test.js:7:16)
      at processTicksAndRejections (node:internal/process/task_queues:96:5)

  2) Contract: Helloworld
       owner should be accounts[0]:
     TypeError: instance.owner is not a function
      at Context.<anonymous> (test/helloworld_test.js:11:36)
      at processTicksAndRejections (node:internal/process/task_queues:96:5)



deepu@Deepikas-Air Truffle % truffle test
Using network 'test'.


Compiling your contracts...
===========================
> Compiling ./contracts/Helloworld.sol
> Compilation warnings encountered:

    project:/contracts/Helloworld.sol:7:17: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    constructor(string memory _message) public{
                ^--------------------^

> Artifacts written to /var/folders/wq/xljysk6x6qn_rfnnr3c0xfjr0000gn/T/test--84067-IVj7CUihRQvz
> Compiled successfully using:
   - solc: 0.5.16+commit.9c3226ce.Emscripten.clang


  Contract: Helloworld
    1) constructor should set the message correctly
    > No events were emitted
    ✔ owner should be accounts[0]


  1 passing (77ms)
  1 failing

  1) Contract: Helloworld
       constructor should set the message correctly:

      AssertionError: expected 'custom message' to equal 'Hello world constructor '
      + expected - actual

      -custom message
      +Hello world constructor 
      
      at Context.<anonymous> (test/helloworld_test.js:7:16)
      at processTicksAndRejections (node:internal/process/task_queues:96:5)



deepu@Deepikas-Air Truffle % truffle test
Using network 'test'.


Compiling your contracts...
===========================
> Compiling ./contracts/Helloworld.sol
> Artifacts written to /var/folders/wq/xljysk6x6qn_rfnnr3c0xfjr0000gn/T/test--84097-VCpUIruxPG0N
> Compiled successfully using:
   - solc: 0.5.16+commit.9c3226ce.Emscripten.clang


  Contract: Helloworld
    ✔ constructor should set the message correctly
    ✔ owner should be accounts[0]


  2 passing (64ms)





