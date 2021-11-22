resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "dashboard-${var.name-instance}"

  dashboard_body = <<EOF
{
    "widgets": [
        {
            "height": 6,
            "width": 12,
            "y": 0,
            "x": 0,
            "type": "metric",
            "properties": {
                "metrics": [
                    [ "AWS/EC2", "CPUUtilization", "InstanceId", "${var.ec2-instance}" ]
                ],
                "period": 300,
                "stat": "Average",
                "region": "${var.region}",
                "title": "${var.name-instance} - EC2 Instance CPU"
            }
        },
        {
            "height": 6,
            "width": 12,
            "y": 0,
            "x": 12,
            "type": "metric",
            "properties": {
                "metrics": [
                    [ "AWS/EC2", "NetworkIn", "InstanceId", "${var.ec2-instance}" ]
                ],
                "period": 300,
                "stat": "Average",
                "region": "${var.region}",
                "title": "${var.name-instance}- NetworkIn"
            }
        },
        {
            "height": 6,
            "width": 12,
            "y": 12,
            "x": 6,
            "type": "metric",
            "properties": {
                "view": "timeSeries",
                "stacked": true,
                "metrics": [
                    [ "AWS/ECS", "CPUUtilization", "ClusterName", "${var.name-instance}" ],
                    [ ".", "MemoryUtilization", ".", "." ]
                ],
                "region": "${var.region}",
                "title": "${var.name-instance}- CPUUtilization, MemoryUtilization"
            }
        },
        {
            "type": "metric",
            "x": 0,
            "y": 6,
            "width": 12,
            "height": 6,
            "properties": {
                "view": "timeSeries",
                "stacked": false,
                "metrics": [
                    [ "AWS/SQS", "ApproximateAgeOfOldestMessage", "QueueName", "${var.sqs_queue_name}" ],
                    [ ".", "ApproximateNumberOfMessagesVisible", ".", ".", { "yAxis": "right" } ]
                ],
                "stat": "Average",
                "period": 300,
                "region": "${var.region}",
                "title": "${var.name-instance}- ApproximateAgeOfOldestMessage, ApproximateNumberOfMessagesVisible"
            }
        },
        {
            "type": "metric",
            "x": 12,
            "y": 6,
            "width": 12,
            "height": 6,
            "properties": {
                "view": "timeSeries",
                "stacked": false,
                "metrics": [
                    [ "AWS/SQS", "ApproximateAgeOfOldestMessage", "QueueName", "${var.sqs_queue_name}" ],
                    [ ".", "ApproximateNumberOfMessagesVisible", ".", ".", { "yAxis": "right" } ]
                ],
                "stat": "Average",
                "period": 300,
                "region": "${var.region}",
                "title": "${var.name-instance} - ApproximateAgeOfOldestMessage, ApproximateNumberOfMessagesVisible"
            }
        }
    ]
}
EOF
}
