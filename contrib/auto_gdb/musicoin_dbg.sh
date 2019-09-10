#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.musicoincore/musicoind.pid file instead
musicoin_pid=$(<~/.musicoincore/testnet3/musicoind.pid)
sudo gdb -batch -ex "source debug.gdb" musicoind ${musicoin_pid}
