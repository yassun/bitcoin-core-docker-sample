# bitcoin-core-docker-sample

## usage
```
$ docker-compose build
$ docker-compose up
$ docker exec -i -t bitcoincoredockersample_bitcoin-core_1 /bin/bash
```

## create block
```
root@877252fe0265:/# bitcoin-cli -regtest generate 101
[
  "2f3adcc9dc6f30ebbc1f41e383604347cc6803x.........................",
  "4a330df24cfbd9be80b988a8e18e99fe4d09a00........................."
  ......
]

root@877252fe0265:/# bitcoin-cli -regtest getblockcount
101

root@877252fe0265:/# bitcoin-cli -regtest getbalance
50.00000000
```

## create account
```
root@877252fe0265:/# bitcoin-cli -regtest getnewaddress testuser1
mm6icVTGKC16QUy4vjUWHHc7fPe3ZNv7jP

root@877252fe0265:/# bitcoin-cli -regtest getbalance testuser1
0.00000000
```

## send bitcoin
```
root@877252fe0265:/# bitcoin-cli -regtest sendtoaddress mm6icVTGKC16QUy4vjUWHHc7fPe3ZNv7jP 10
0b3337112ab6b943beee3476bc26b5ca4dc5b1761f9f84647a1d69c6d48fd1ed

root@877252fe0265:/# bitcoin-cli -regtest listunspent 0
[
  {
    "txid": "0b3337112ab6b943beee3476bc26b5ca4dc5b1761f9f84647a1d69c6d48fd1ed",
    "vout": 0,
    "address": "mkQCE81TRrJenBLa6pQi9JXDtpq9TV3zB2",
    "scriptPubKey": "76a914359158e23333eebf03930a2d35ba158198bc9d6e88ac",
    "amount": 39.99996160,
    "confirmations": 0,
    "spendable": true,
    "solvable": true,
    "safe": true
  },
  {
    "txid": "0b3337112ab6b943beee3476bc26b5ca4dc5b1761f9f84647a1d69c6d48fd1ed",
    "vout": 1,
    "address": "mm6icVTGKC16QUy4vjUWHHc7fPe3ZNv7jP",
    "account": "testuser1",
    "scriptPubKey": "76a9143d3b59b191d062817e476c87fc5760925a594c9788ac",
    "amount": 10.00000000,
    "confirmations": 0,
    "spendable": true,
    "solvable": true,
    "safe": true
  }
]
```

## mining
```
root@877252fe0265:/# bitcoin-cli -regtest generate 1
[
  "65d29dafbec20e54555da2c00f8139fe37fad77a2919fbfb40058abea6378ae4"
]
```

## show ransactions
```
root@56451b900162:/# bitcoin-cli -regtest listtransactions
[
  {
    "account": "",
    "address": "mgLZcREid1CbiXMYtS2Q4fHaJXZSbMu1wR",
    "category": "immature",
    "amount": 25.00000000,
    "vout": 0,
    "confirmations": 10,
    "generated": true,
    "blockhash": "21d1f9a91d6b4aea7a5c025b22c7ada6c1b617843b854a60791d31a6523a2d75",
    "blockindex": 0,
    "blocktime": 1492941021,
    "txid": "51b50cbab2f655b851f197c4fa39eb734a7bdf8f3df51906fad460047cb80cbe",
    "walletconflicts": [
    ],
    "time": 1492941006,
    "timereceived": 1492941006,
    "bip125-replaceable": "no"
  },
  .....
]
```

## show all address
```
root@56451b900162:/# bitcoin-cli -regtest getaddressesbyaccount ""
[
  "mfxaHt5H2xbADq2yXkTtouXoL7GRL2BLpR",
  "mmiPkDJf8By9cypfCdYztNWB12n2kMZiey",
  "mo8kfsMdTdqanhpr2HMqBrxKfUCGEpYL2K",
  "moG1z6JEzd8oUGeBDYRKwb5i4cbxrQ2p3L",
  "moV9Wdt1VhzX7eUcf6rRfj4Lzqadtnz6Wx",
  "moWNmxxUwCc7WaaSq3V52xViRNzb6d6ows",
  "mpEcA5cKgujUzV7JSt4SuHZLJftRLfxWE1",
  "mtcqeb4s4gzPac5DEur9FFH6Zm78ToXFpZ",
  "mybNLVbKgfJ7oKKuymWFT43RPfX8D2XcGU"
]
```

## show transaction
```
bitcoin-cli -regtest gettransaction (txid)793809faa24cebd3416f565b854d8b5140b5b238366e144c947f259c22ad30ea
{
  "amount": -10.00000000,
  "fee": -0.00007480,
  "confirmations": 0,
  "trusted": true,
  "txid": "793809faa24cebd3416f565b854d8b5140b5b238366e144c947f259c22ad30ea",
  "walletconflicts": [
  ],
  "time": 1492941266,
  "timereceived": 1492941266,
  "bip125-replaceable": "no",
  "details": [
    {
      "account": "",
      "address": "mm6icVTGKC16QUy4vjUWHHc7fPe3ZNv7jP",
      "category": "send",
      "amount": -10.00000000,
      "vout": 1,
      "fee": -0.00007480,
      "abandoned": false
    }
  ],
  "hex": "02000000023f6edb1d514edf824fe3987cb8202724e2d18d4f3bda4a2b3aab2bcad3d70cbf010000006a47304402203e0703e4270ebdc3abd10cfd8362a6d4aa98ae3669f1cb5c105d9f7fe1840ef3022049342584bfb52bd7008044454c122fe3ced03ec74efdf42dcbbceab22ff2bf1a012103ac787aff0b9f71eb74bb08ebd32aacd5d8fc30524eb7e5944277deb974c880d5feffffffc80209c1b43a763ad73df8e2fb80e0745e7766997b4d197e96cb0ae48ebc1352000000006b483045022100e7eb7fff54114efdcabaf22e2c91e7caf642adc9bb02e1429df2000af0245a4702204d4e8d5d6dce3e94533ebdf89b994b438be8eec6c4d086562af7d1a32445e01101210357e60a33c3bae25803b217f164811b50245d71d0d6308e92ee2511eb09ae7265feffffff02c8ac9a3b000000001976a9144781f0c9e40d6005668f59b596034498ec968dfc88ac00ca9a3b000000001976a9143d3b59b191d062817e476c87fc5760925a594c9788ac2f010000"
}
```


## show transaction detail

```
root@56451b900162:/# bitcoin-cli -regtest decoderawtransaction (hex)02000000023f6edb1d514edf824fe3987cb8202724e2d18d4f3bda4a2b3aab2bcad3d70cbf010000006a47304402203e0703e4270ebdc3abd10cfd8362a6d4aa98ae3669f1cb5c105d9f7fe1840ef3022049342584bfb52bd7008044454c122fe3ced03ec74efdf42dcbbceab22ff2bf1a012103ac787aff0b9f71eb74bb08ebd32aacd5d8fc30524eb7e5944277deb974c880d5feffffffc80209c1b43a763ad73df8e2fb80e0745e7766997b4d197e96cb0ae48ebc1352000000006b483045022100e7eb7fff54114efdcabaf22e2c91e7caf642adc9bb02e1429df2000af0245a4702204d4e8d5d6dce3e94533ebdf89b994b438be8eec6c4d086562af7d1a32445e01101210357e60a33c3bae25803b217f164811b50245d71d0d6308e92ee2511eb09ae7265feffffff02c8ac9a3b000000001976a9144781f0c9e40d6005668f59b596034498ec968dfc88ac00ca9a3b000000001976a9143d3b59b191d062817e476c87fc5760925a594c9788ac2f010000
{
  "txid": "793809faa24cebd3416f565b854d8b5140b5b238366e144c947f259c22ad30ea",
  "hash": "793809faa24cebd3416f565b854d8b5140b5b238366e144c947f259c22ad30ea",
  "size": 373,
  "vsize": 373,
  "version": 2,
  "locktime": 303,
  "vin": [
    {
      "txid": "bf0cd7d3ca2bab3a2b4ada3b4f8dd1e2242720b87c98e34f82df4e511ddb6e3f",
      "vout": 1,
      "scriptSig": {
        "asm": "304402203e0703e4270ebdc3abd10cfd8362a6d4aa98ae3669f1cb5c105d9f7fe1840ef3022049342584bfb52bd7008044454c122fe3ced03ec74efdf42dcbbceab22ff2bf1a[ALL] 03ac787aff0b9f71eb74bb08ebd32aacd5d8fc30524eb7e5944277deb974c880d5",
        "hex": "47304402203e0703e4270ebdc3abd10cfd8362a6d4aa98ae3669f1cb5c105d9f7fe1840ef3022049342584bfb52bd7008044454c122fe3ced03ec74efdf42dcbbceab22ff2bf1a012103ac787aff0b9f71eb74bb08ebd32aacd5d8fc30524eb7e5944277deb974c880d5"
      },
      "sequence": 4294967294
    },
    {
      "txid": "5213bc8ee40acb967e194d7b9966775e74e080fbe2f83dd73a763ab4c10902c8",
      "vout": 0,
      "scriptSig": {
        "asm": "3045022100e7eb7fff54114efdcabaf22e2c91e7caf642adc9bb02e1429df2000af0245a4702204d4e8d5d6dce3e94533ebdf89b994b438be8eec6c4d086562af7d1a32445e011[ALL] 0357e60a33c3bae25803b217f164811b50245d71d0d6308e92ee2511eb09ae7265",
        "hex": "483045022100e7eb7fff54114efdcabaf22e2c91e7caf642adc9bb02e1429df2000af0245a4702204d4e8d5d6dce3e94533ebdf89b994b438be8eec6c4d086562af7d1a32445e01101210357e60a33c3bae25803b217f164811b50245d71d0d6308e92ee2511eb09ae7265"
      },
      "sequence": 4294967294
    }
  ],
  "vout": [
    {
      "value": 9.99992520,
      "n": 0,
      "scriptPubKey": {
        "asm": "OP_DUP OP_HASH160 4781f0c9e40d6005668f59b596034498ec968dfc OP_EQUALVERIFY OP_CHECKSIG",
        "hex": "76a9144781f0c9e40d6005668f59b596034498ec968dfc88ac",
        "reqSigs": 1,
        "type": "pubkeyhash",
        "addresses": [
          "mn33w6ySQ9qG6naXTQQpyvqHT3hiPeK7S4"
        ]
      }
    },
    {
      "value": 10.00000000,
      "n": 1,
      "scriptPubKey": {
        "asm": "OP_DUP OP_HASH160 3d3b59b191d062817e476c87fc5760925a594c97 OP_EQUALVERIFY OP_CHECKSIG",
        "hex": "76a9143d3b59b191d062817e476c87fc5760925a594c9788ac",
        "reqSigs": 1,
        "type": "pubkeyhash",
        "addresses": [
          "mm6icVTGKC16QUy4vjUWHHc7fPe3ZNv7jP"
        ]
      }
    }
  ]
}
```

show block
```
root@56451b900162:/# bitcoin-cli -regtest getblock (block hash)73076728c5bae701ab259c3821e28d48de919efa9cadb26cc59ca038b08b69ce
{
  "hash": "73076728c5bae701ab259c3821e28d48de919efa9cadb26cc59ca038b08b69ce",
  "confirmations": 101,
  "strippedsize": 601,
  "size": 601,
  "weight": 2404,
  "height": 304,
  "version": 805306371,
  "versionHex": "30000003",
  "merkleroot": "40727f823ab8bfacd955fa1b694ed2f0311488a458cfed3f7754964e45958837",
  "tx": [
    "19e7c88673207644f12866f6143a097d205e54ad67a8d19a6066c0a3eff12713",
    "793809faa24cebd3416f565b854d8b5140b5b238366e144c947f259c22ad30ea"
  ],
  "time": 1492942713,
  "mediantime": 1492941022,
  "nonce": 0,
  "bits": "207fffff",
  "difficulty": 4.656542373906925e-10,
  "chainwork": "0000000000000000000000000000000000000000000000000000000000000262",
  "previousblockhash": "4f754f6d6c33d36569874176b69d83226f8e969a67b209867324d0a2902b24f9",
  "nextblockhash": "14d33e092b667fc794e21779dd7d2bb154c17ff00ac486f7e510d9e2c34594fe"
}
```
