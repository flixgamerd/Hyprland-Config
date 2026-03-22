#!/bin/bash
cliphist list | anyrun --plugins /etc/anyrun/plugins/libstdin.so | cliphist decode | wl-copy
