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



