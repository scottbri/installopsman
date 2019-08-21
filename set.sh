#!/bin/bash

# note the space before the command
 fly -t control-plane set-pipeline \
     -p foundation \
     -c pipeline.yml \
     -v pivnet-refresh-token=${PIVNETTOKEN}
