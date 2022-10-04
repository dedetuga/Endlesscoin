Shared Libraries
================

## endlesscoinconsensus

The purpose of this library is to make the verification functionality that is critical to EndessCoin's consensus available to other applications, e.g. to language bindings.

### API

The interface is defined in the C header `endlesscoinconsensus.h` located in  `src/script/endlesscoinconsensus.h`.

#### Version

`endlesscoinconsensus_version` returns an `unsigned int` with the API version *(currently at an experimental `0`)*.

#### Script Validation

`endlesscoinconsensus_verify_script` returns an `int` with the status of the verification. It will be `1` if the input script correctly spends the previous output `scriptPubKey`.

##### Parameters
- `const unsigned char *scriptPubKey` - The previous output script that encumbers spending.
- `unsigned int scriptPubKeyLen` - The number of bytes for the `scriptPubKey`.
- `const unsigned char *txTo` - The transaction with the input that is spending the previous output.
- `unsigned int txToLen` - The number of bytes for the `txTo`.
- `unsigned int nIn` - The index of the input in `txTo` that spends the `scriptPubKey`.
- `unsigned int flags` - The script validation flags *(see below)*.
- `endlesscoinconsensus_error* err` - Will have the error/success code for the operation *(see below)*.

##### Script Flags
- `endlesscoinconsensus_SCRIPT_FLAGS_VERIFY_NONE`
- `endlesscoinconsensus_SCRIPT_FLAGS_VERIFY_P2SH` - Evaluate P2SH ([BIP16](https://github.com/endlesscoin/bips/blob/master/bip-0016.mediawiki)) subscripts
- `endlesscoinconsensus_SCRIPT_FLAGS_VERIFY_DERSIG` - Enforce strict DER ([BIP66](https://github.com/endlesscoin/bips/blob/master/bip-0066.mediawiki)) compliance
- `endlesscoinconsensus_SCRIPT_FLAGS_VERIFY_NULLDUMMY` - Enforce NULLDUMMY ([BIP147](https://github.com/endlesscoin/bips/blob/master/bip-0147.mediawiki))
- `endlesscoinconsensus_SCRIPT_FLAGS_VERIFY_CHECKLOCKTIMEVERIFY` - Enable CHECKLOCKTIMEVERIFY ([BIP65](https://github.com/endlesscoin/bips/blob/master/bip-0065.mediawiki))
- `endlesscoinconsensus_SCRIPT_FLAGS_VERIFY_CHECKSEQUENCEVERIFY` - Enable CHECKSEQUENCEVERIFY ([BIP112](https://github.com/endlesscoin/bips/blob/master/bip-0112.mediawiki))
- `endlesscoinconsensus_SCRIPT_FLAGS_VERIFY_WITNESS` - Enable WITNESS ([BIP141](https://github.com/endlesscoin/bips/blob/master/bip-0141.mediawiki))

##### Errors
- `endlesscoinconsensus_ERR_OK` - No errors with input parameters *(see the return value of `endlesscoinconsensus_verify_script` for the verification status)*
- `endlesscoinconsensus_ERR_TX_INDEX` - An invalid index for `txTo`
- `endlesscoinconsensus_ERR_TX_SIZE_MISMATCH` - `txToLen` did not match with the size of `txTo`
- `endlesscoinconsensus_ERR_DESERIALIZE` - An error deserializing `txTo`
- `endlesscoinconsensus_ERR_AMOUNT_REQUIRED` - Input amount is required if WITNESS is used

### Example Implementations
- [NEndessCoin](https://github.com/NicolasDorier/NEndessCoin/blob/master/NEndessCoin/Script.cs#L814) (.NET Bindings)
- [node-libendlesscoinconsensus](https://github.com/bitpay/node-libendlesscoinconsensus) (Node.js Bindings)
- [java-libendlesscoinconsensus](https://github.com/dexX7/java-libendlesscoinconsensus) (Java Bindings)
- [endlesscoinconsensus-php](https://github.com/Bit-Wasp/endlesscoinconsensus-php) (PHP Bindings)
