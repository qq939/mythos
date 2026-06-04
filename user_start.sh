#!/bin/bash
cd /home/agent/.claude/workspace/project

# Kill any existing node processes on port 8082
fuser -k 8082/tcp 2>/dev/null

# Create logs directory
mkdir -p logs

# Start the novel server
nohup node server.js > logs/novel-stdout.log 2>&1 &

echo "Mythos novel server started on port 8082"
