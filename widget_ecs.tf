resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "${var.name-instance}-dashboard-${var.ec2-instance}"

  dashboard_body = <<EOF
{
  "widgets": [
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "CPUUtilization",
            "InstanceId",
            "${var.ec2-instance}"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "${var.region}",
        "title": "${var.name-instance}- EC2 Instance CPU"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 7,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "NetworkIn",
            "InstanceId",
            "${var.ec2-instance}"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "${var.region}",
        "title": "${var.ec2-instance} - NetworkIn"
      }
    },
    {
      "type": "text",
      "x": 0,
      "y": 14,
      "width": 3,
      "height": 3,
      "properties": {
        "markdown": "${var.text-block}"
      }
    }
  ]
}
EOF
}
