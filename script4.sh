#!/bin/bash

KEYWORD=${1:-"error"}   # Default keyword is "error"
OUTPUT="log_analysis.txt"
COUNT=0

# Get logs from journalctl (system logs)
LOGS=$(journalctl --no-pager 2>/dev/null)

# Check if we got any logs
if [ -z "$LOGS" ]; then
    echo "No logs found via journalctl. Creating sample log file."
    echo -e "error\nwarning\nerror\ntest\nerror" > sample.log
    LOGS=$(cat sample.log)
fi

# Count keyword occurrences
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done <<< "$LOGS"

# Show results
echo "Keyword '$KEYWORD' found $COUNT times" | tee $OUTPUT

# Show last 5 matching lines
echo ""
echo "Last 5 matching lines:" | tee -a $OUTPUT
echo "$LOGS" | grep -i "$KEYWORD" | tail -n 5 | tee -a $OUTPUT