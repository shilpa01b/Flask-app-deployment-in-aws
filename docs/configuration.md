## Security Group Configuration

 # ALB Security Group**
- Inbound: Allow HTTP on port 80 from `0.0.0.0/0`
- Outbound: Allow traffic to the EC2 security group on port 5000

 # EC2 Security Group**
- Inbound: Allow port 5000 from the ALB security group only
- Outbound: Allow all traffic for system updates and package installation, or restrict it to required ports only for tighter security

This setup keeps the Flask app private behind the load balancer while still allowing the ALB to reach the application and health check the target.