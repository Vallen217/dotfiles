#!/bin/bash

sensors | awk '/edge:/ {print substr ($2, 2)}' | head -n 1
