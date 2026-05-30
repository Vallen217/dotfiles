#!/bin/bash

sensors | awk '/^T(case|die|ctl)/ {print substr($2, 2)}' | head -n 1
