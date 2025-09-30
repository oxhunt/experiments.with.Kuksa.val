# Kuksa example

Docker compose using KUKSA as a vehicle abstraction layer.
Usage:
`docker compose up`

You can interact with the broker using the cli:
`docker attach kuksa-databroker-cli`

The candump file is large, so it won't be included here but you can download it from the original repo: `https://github.com/eclipse-kuksa/kuksa-can-provider`.
Place it in `kuksa-feeder-files/candump.log`.