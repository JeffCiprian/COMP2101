#!/bin/bash

if
  [ /etc/hosts -nt /etc/resolv.conf ]; then
      echo "/etc/hosts is newer than /etc/resolv.conf"
elif
  [ /etc/hosts -ot /etc/resolv.conf ]; then
      echo "/etc/hosts is older than /etc/resolv.conf"
else
  [ /etc/hosts -eq /etc/resolv.conf ]; then
        echo "/etc/hosts is the same age as /etc/resolv.conf"
fi
