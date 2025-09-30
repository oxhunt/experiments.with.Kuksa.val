# Carla Feeder setup

CarlaServer <-carlaAPI- manual-control.py 
            <-carlaAPI- carla-websock.py --websock-> WebsockVss <-grpc-> KuksaBroker <-grpc-> client

run the ./0-setup-carla-feeder.sh script to setup the python environments for the subprojects

# Steps
every step needs to be done on a different terminal
1) start the carla server and take note of IP. (Port is by default 2000)
2) start manual-control.py in autopilot mode toward IP
    - ./4-manual-control-start.sh --autopilot --host <IP>
3) start the KuksaBroker
    - docker run -it --rm --net=host ghcr.io/eclipse/kuksa.val/databroker:master --insecure
4) start WebsockVss
    - ./6-start-websockvss.sh
5) start carla-websock.py toward IP
    - ./7-start-carla-websock.sh <IP>
6) start the client app
    - docker run -it --rm --net=host ghcr.io/eclipse/kuksa.val/databroker-cli:master
