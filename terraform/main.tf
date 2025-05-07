provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jenkins_ec2" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2
  instance_type = "t2.micro"
  key_name      = "webserver.pem"
  tags = {
    Name = "jenkins-server"
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install java-openjdk11 -y
              wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
              rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
              yum install jenkins -y
              systemctl enable jenkins
              systemctl start jenkins
              EOF
}

output "jenkins_public_ip" {
  value = aws_instance.jenkins_ec2.public_ip
}
