# docker-mininet
Mininet in a Docker container

Pull it from the Docker Hub:

```
docker pull chickenmaru/nettools
```

Alternatively, build it yourself:

```
make
make run
```

The command `make shell` can be used to start a shell session. All ports are exposed for use with OpenFlow controller connections.

The script `init_ovs.sh` contains the default OpenvSwitch initialization commands. Edit this and rebuild the image if you wish to change the default parameters.

Mininet: [https://github.com/mininet/mininet](https://github.com/mininet/mininet)
