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
