Ethereum Network Intelligence API
============

This is the backend service which runs along with ethereum and tracks the network status, fetches information through JSON-RPC and connects through WebSockets to [eth-netstats](https://github.com/cubedro/eth-netstats) to feed information. For full install instructions please read the [wiki](https://github.com/ethereum/wiki/wiki/Network-Status).


## Installation as Docker service 

This app is meant to be part of ethereum docker stack, there is example of
section of docker compose file with default configuration:

```yaml
  agent:
    image: swarmpit/ethstats-agent:latest
    environment:
      RPC_HOST: parity # name of watched ethereum service
      RPC_PORT: 8545
      LISTENING_PORT: 30303
      INSTANCE_NAME: parity # name of this node in dashboard
      WS_SERVER: http://dashboard:3000 # dashboard url
      WS_SECRET: s3cr3t # default secret
      VERBOSITY: 2
    networks:
      - net
    logging:
      driver: json-file
    deploy:
      resources:
        reservations:
          cpus: '0.1'
          memory: 128M
        limits:
          cpus: '1.0'
          memory: 256M
```
