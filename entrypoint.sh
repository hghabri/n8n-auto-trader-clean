#!/bin/bash

# Copy all workflows to n8n data folder if not already copied
mkdir -p /home/node/.n8n
cp -n /workflows/*.json /home/node/.n8n/ 2>/dev/null

# Launch n8n
n8n

