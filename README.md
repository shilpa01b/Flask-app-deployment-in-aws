# Flask-app-deployment-in-aws
deploying a containerize app

This project deploys a Flask application on Amazon EC2 using Docker and exposes it through an internet-facing Application Load Balancer (ALB). The current version uses EC2, Docker, ALB, target groups, VPC networking, IAM roles, security groups, VPC endpoints, and Ubuntu Linux.

Architecture
The Flask app runs inside a Docker container on EC2 and listens on port 5000. The ALB listens on port 80 and forwards requests to the EC2 instance through a target group configured for port 5000.

## Flow:

- User opens the ALB DNS URL.

- ALB receives traffic on port 80.

- Target group forwards traffic to EC2 on port 5000.

- Docker delivers the request to the Flask app inside the container.

## Services Used

- Containerization: Docker
- Cloud Platform: AWS
- Compute: Amazon EC2
- Load Balancing: Application Load Balancer
- Container Registry: Amazon ECR
- Instance Management: AWS Systems Manager
- Networking: VPC, Public and Private Subnets
- Security: IAM Roles, Security Groups
- Private Service Access: VPC Endpoints
- Operating System: Ubuntu Linux

## Current features
- Dockerized Flask application on EC2.
- Internet-facing ALB for public access.
- Manual target registration for the EC2 instance.
- Private networking with security group based access control.
- Ubuntu Linux as the host operating system.

## Project structure

# Project Structure

- Flask-app-deployment-in-aws/
- architecture/
  - architecture.png
- docker-compose/
  - docker-compose.yml
- docs/
  - configuration.md
  - troubleshooting.md
- screenshots/
  - alb.png
  - docker-ps.png
  - ec2.png
  - ecr.png
  - iam.png
  - output.png
  - vpc-endpoint.png
  - vpc.png
- scripts/
  - command.sh
  - install-docker.sh
- README.md

## Deployment summary
1. Launch EC2 instance
Create an EC2 instance and install Docker on it.

2. Run the container
docker compose up -d

3. Create ALB and target group
Create an internet-facing ALB with a listener on port 80. Create a target group that sends traffic to EC2 targets on port 5000.

4. Register EC2 instance
Manually register the EC2 instance in the target group if Auto Scaling is not used. After registration, the target must become healthy before the ALB can serve the app properly.

## Persistence note
Data written only inside a container can be lost if the container is removed or recreated. Docker volumes are used to keep data outside the container lifecycle and make it persistent across container changes.

## Future Improvements
- Add WAF for more security
- Add Amazon RDS MySQL for managed database storage.
- Add CloudWatch for logs, metrics, and alerts.
- Add Auto Scaling Group for high availability.
- Add CI/CD for automation using jenkins, GitHub Actions.

## Learning outcome
This project is a strong beginner DevOps deployment that demonstrates how Dockerized applications are exposed through an AWS load balancer and how target groups, security groups, and EC2 instances work together in a real deployment flow.

