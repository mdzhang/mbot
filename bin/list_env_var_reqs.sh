#!/usr/bin/env bash

# A few scripts (including some installed by default) require environment
# variables to be set as a simple form of configuration.
#
# Each script should have a commented header which contains a "Configuration"
# section that explains which values it requires to be placed in which variable.
# When you have lots of scripts installed this process can be quite labour
# intensive. The following shell command can be used as a stop gap until an
# easier way to do this has been implemented.
grep -o 'hubot-[a-z0-9_-]\+' external-scripts.json | \
  xargs -n1 -I {} sh -c 'sed -n "/^# Configuration/,/^#$/ s/^/{} /p" \
      $(find node_modules/{}/ -name "*.coffee")' | \
    awk -F '#' '{ printf "%-25s %s\n", $1, $2 }'
