#!/bin/bash

USED=$(df --output=used / | tail -1)
AVAIL=$(df --output=avail / | tail -1)
USED_PER=$((${USED} * 100 / (${USED} + ${AVAIL})))

echo "${USED_PER}%"
