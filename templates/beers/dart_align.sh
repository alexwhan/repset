#!/usr/bin/env bash

dart -i ${idxmeta.target} \
  -f ${r1} \
  -f2 ${r2} \
  -t ${task.cpus} \
  ${ALIGN_PARAMS} \
  -o sam