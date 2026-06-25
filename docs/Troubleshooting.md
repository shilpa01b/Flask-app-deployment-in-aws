## Troubleshooting
  # Systems Manager Session Fails
- port mismatch to 80 instead of 5000 in target group.

Impact:

- The ALB could not route traffic correctly to the Flask container.

- Health checks failed or behaved unexpectedly.

- Debugging the application through SSM became confusing because the actual app port did not match the target group port.

  # 503 Service Temporarily Unavailable
This usually means the ALB has no healthy targets, or the app is not reachable on the correct port.

Check:

Target is registered in the target group.

Target group port is 5000.

Flask app is running on 0.0.0.0:5000.

Security groups allow ALB-to-EC2 traffic on port 5000.
