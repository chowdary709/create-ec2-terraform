#!/bin/bash

# Variables
ZONE_ID="Z0013695SMHQDK42GJB1"
NAME="workstation.chowdary.cloud"
TYPE="A"
TTL=10
RECORDS=$1

# Check if RECORDS variable is provided
if [ -z "$RECORDS" ]; then
  echo "Usage: $0 <record_value>"
  exit 1
fi

# Get the current record value
CURRENT_RECORD=$(aws route53 list-resource-record-sets --hosted-zone-id $ZONE_ID --query "ResourceRecordSets[?Name == '$NAME.']" --output json | jq -r '.[0].ResourceRecords[0].Value')

# Check if the record exists
if [ -n "$CURRENT_RECORD" ]; then
  # Create JSON payload to delete the existing record
  cat > delete-change-batch.json <<EOF
{
  "Comment": "Delete A record for $NAME",
  "Changes": [
    {
      "Action": "DELETE",
      "ResourceRecordSet": {
        "Name": "$NAME",
        "Type": "$TYPE",
        "TTL": $TTL,
        "ResourceRecords": [
          {
            "Value": "$CURRENT_RECORD"
          }
        ]
      }
    }
  ]
}
EOF

  # Delete the existing record
  aws route53 change-resource-record-sets --hosted-zone-id $ZONE_ID --change-batch file://delete-change-batch.json

  echo "Deleted existing record: $CURRENT_RECORD"
fi

# Create JSON payload to create the new record
cat > create-change-batch.json <<EOF
{
  "Comment": "Create A record for $NAME",
  "Changes": [
    {
      "Action": "CREATE",
      "ResourceRecordSet": {
        "Name": "$NAME",
        "Type": "$TYPE",
        "TTL": $TTL,
        "ResourceRecords": [
          {
            "Value": "$RECORDS"
          }
        ]
      }
    }
  ]
}
EOF

# Create the new record
aws route53 change-resource-record-sets --hosted-zone-id $ZONE_ID --change-batch file://create-change-batch.json

echo "Created new record: $RECORDS"