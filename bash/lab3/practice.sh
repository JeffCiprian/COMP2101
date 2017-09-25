#!/bin/bash

if [ -e /etc/resolv.conf ]; then
  echo "/etc/resolv.conf exists"
else
  echo "/etc/resolv.conf does not exitst"
fi
