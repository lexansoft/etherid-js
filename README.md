# etherid-js
Javascript API for EtherID


## Installation

### In Node.js through npm

```bash
$ npm install etherid
```


### In the Browser through browserify

Same as in Node.js, you just have to [browserify](https://github.com/substack/js-browserify) the code before serving it. 

### In the Browser through `<script>` tag

Make the [multihashes.min.js](/dist/etherid.min.js) available through your server and load it using a normal `<script>` tag, then you can require('etherid'). See the [Demo HTML](/tests/test.html)  


##Usage

### Initialization of the Web3

The [Web3](https://github.com/ethereum/web3.js) object is needed. This is the proper way to init it, so it will work in the Mist browser.

```javascript
if(typeof web3 === 'undefined')
    web3 = require('web3');     

if( web3.currentProvider == null )
    web3.setProvider( new web3.providers.HttpProvider( ) );   
```

### Initialization of teh EtherID object 
```javascript
var etherid = require('etherid')
```

### Reading the domain record

To read the domain record you call:

```javascript
etherid.getDomain( web3, {DOMAIN_NAME} )
```
{DOMAIN_NAME} can be a BigNumber, string or hex ( "0xNNNN.." )

The call returns a struct:

```javascript
{
    domain      // Domain name (as BigNumber)
    owner       // Address of the domain owner
    expires     // The Ethereum Blockchin block number of expiration
    price       // Selling Price if any
    transfer    // The address for the domain transer
    next_domain // Next domain name in the linked list
    root_id     // First ID if any
}
```

### Reading the domain ID

```javascript
etherid.getId( web3, {DOMAIN_NAME}, {ID} )
```

Both {DOMAIN_NAME} and {ID} can be a BigNumber, string or hex ( "0xNNNN.." )

The call returns a struct:

```javascript
{
    value       // Value
    next_id     // Next ID in the linked list
    prev_id     // Previous ID in the linked list
}
```

### Reading string ID

```javascript
etherid.getStr( web3, {DOMAIN_NAME}, {ID} )
```
Returns string ID value

### Reading integer ID

```javascript
etherid.getInt( web3, {DOMAIN_NAME}, {ID} )
```
Returns integer ID value

### Reading hash ID

```javascript
etherid.getInt( web3, {DOMAIN_NAME}, {ID} )
```
Returns the ID value interpreted as a [multihash](https://github.com/jbenet/multihash) sha2-512. (Same that is used by [ipfs](https://ipfs.io/)

## License

Apache 2.0


##Author

Alexandre Naverniouk
@alexna
