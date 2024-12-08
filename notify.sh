#!/bin/bash
STATUS=$1
if [ "$STATUS" = "success" ]; then
    echo "Terraform deployment succeeded!" | mail -s "Success" maymeriem.benhadjslama@gmail.com
elif [ "$STATUS" = "failure" ]; then
    echo "Terraform deployment failed!" | mail -s "Failure" maymeriem.benhadjslama@gmail.com
fi
