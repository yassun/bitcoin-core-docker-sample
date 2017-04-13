# bitcoin-core-docker-sample

## usage
```
$ docker-compose build
$ docker-compose up
docker exec -i -t bitcoincoredokcersample_bitcoin-core_1 /bin/bash
```

## create block
```
root@877252fe0265:/# bitcoin-cli -regtest generate 101
[
  "2f3adcc9dc6f30ebbc1f41e383604347cc6803x.........................",
  "4a330df24cfbd9be80b988a8e18e99fe4d09a00........................."
  ......
]
```
