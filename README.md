# docker-compose run in parallel failure

## Synopsis

When running multiple instances of service using `docker-compose run` in parallel, some containers fail to start started with an error:
> ERROR: No such container: ebe351e9f48acc1cb4c58f16df3487294c0f7ee5e7632f846974e9197f864bdd

## Steps to reproduce

1. Start rsyslog service

    ```
    docker-compose up -d rsyslog
    ```

2. Start stress test

    ```
    ./run.sh
    ```
3. Observe multiple error messages in the terminal. If the error messages are not present, try to increase I/O parameter of the `stress` application in `docker-compose.yml`.
File `example_run.log` contains example log from execution of `run.sh` where only 14 containers of 20 were started.

## Software & hardware parameters
* Intel(R) Core(TM) i7-4810MQ CPU @ 2.80GHz (4 cores / 8 threads)
* 24 GB RAM
* Kernel: 4.12.8-2-ARCH
* OS: Archlinux
* Docker version 1:17.07.0-1
* Docker compose version: 1.15.0-1

