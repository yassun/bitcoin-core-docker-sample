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


