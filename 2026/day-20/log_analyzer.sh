#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Error: Please provide a log file."
    exit 1
fi

log_file=$1

if [ ! -f "$log_file" ]; then
    echo "Error: File does not exist."
    exit 1
fi

echo "File validation successful!"


error_count=$(grep -Ec "ERROR|Failed" "$log_file")

echo "Total Errors Found: $error_count"


echo ""
echo "--- Critical Events ---"

critical_events=$(grep -n "CRITICAL" "$log_file" | while IFS=: read -r line_num message
do
    echo "Line $line_num: $message"
done)

if [ -z "$critical_events" ]; then
    echo "No critical events found."
    critical_events="No critical events found."
else
    echo "$critical_events"
fi


echo ""
echo "--- Top 5 Error Messages ---"

top_errors=$(grep "ERROR" "$log_file" \
| awk -F'\[ERROR\] ' '{print $2}' \
| awk -F' - ' '{print $1}' \
| sort \
| uniq -c \
| sort -nr \
| head -5)

if [ -z "$top_errors" ]; then
    echo "No ERROR messages found."
    top_errors="No ERROR messages found."
else
    echo "$top_errors"
fi

report_date=$(date +%F)
report_file="log_report_${report_date}.txt"

total_lines=$(wc -l < "$log_file")

{
    echo "==================================="
    echo "       Log Analysis Report"
    echo "==================================="
    echo ""
    echo "Date of Analysis : $(date)"
    echo "Log File         : $log_file"
    echo "Total Lines      : $total_lines"
    echo "Total Error Count: $error_count"
    echo ""

    echo "===== Top 5 Error Messages ====="
    echo "$top_errors"
    echo ""

    echo "===== Critical Events ====="
    echo "$critical_events"
    echo ""

} > "$report_file"

echo ""
echo "Report generated successfully: $report_file"

mkdir -p archive
mv "$log_file" archive/
echo "Log file archived successfully: archive/$(basename "$log_file")"

