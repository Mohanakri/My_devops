

# Create ECS Cluster
resource "aws_ecs_cluster" "github_runner_cluster" {
  name = "github-runner-cluster"
}

# IAM Role for ECS Task Execution
resource "aws_iam_role" "ecs_task_execution_role" {
  name = "ecsTaskExecutionRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = { Service = "ecs-tasks.amazonaws.com" }
      Action = "sts:AssumeRole"
    }]
  })
}

# Attach Policy for ECS Task Execution Role
resource "aws_iam_role_policy_attachment" "ecs_task_execution_role_policy" {
  role       = aws_iam_role.ecs_task_execution_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

# Security Group for ECS
resource "aws_security_group" "ecs_security_group" {
  name        = "ecs_security_group"
  description = "Allow inbound traffic for GitHub runner"
 #vpc_id      = "your-vpc-id"  # Replace with your VPC ID

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# ECS Task Definition for GitHub Actions Runner
resource "aws_ecs_task_definition" "github_runner_task" {
  family                   = "github-runner-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn
  cpu                      = "512"
  memory                   = "1024"

  container_definitions = jsonencode([
    {
      name      = "github-runner"
      image     = "mycustom/github-actions-runner:latest" # Replace with your runner image
      cpu       = 512
      memory    = 1024
      essential = true
      environment = [
        { name = "RUNNER_NAME", value = "ecs-github-runner" },
        { name = "GITHUB_REPOSITORY", value = "your-org/your-repo" },
        { name = "GITHUB_ACCESS_TOKEN", value = "your-personal-access-token" }
      ]
    }
  ])
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.github_runner_cluster.name
}

output "ecs_task_definition_arn" {
  value = aws_ecs_task_definition.github_runner_task.arn
}
