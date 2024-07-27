#!/bin/bash

# 1. Update Package->
sudo apt update -y

# 2. Install Java-11->
sudo apt install openjdk-17-jdk -y

# 3. Install Maven->
sudo apt install maven -y

# 4. Jenkins Key->
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# 5. Jenkins List->
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# 6. Again Update->
sudo apt update -y

# 7. Install Jenkins->
sudo apt install jenkins -y

# 8. Start Jenkins->
service jenkins start

# 9. Generate Initial Password->
cat /var/lib/jenkins/secrets/initialAdminPassword

# 10.chmod 777 jenkins.sh
# 11. sh jenkins.sh
