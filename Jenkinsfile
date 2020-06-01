pipeline {
  agent {
    node {
      label 'master'
    }
    
  }
  
  environment {
    GOOGLE_CREDENTIALS = credentials('GCP-USER')
  }
  
  tools {
  terraform 'Terraform'
 }
  
  stages {
    stage('checkout') {
      steps {
        sh 'echo $GOOGLE_CREDENTIALS | base64 -d > keyfile.json'
      }
    }
    stage('plan') {
      steps {
        sh 'terraform init'
        sh 'terraform plan -out myplan'
      }
    }
    stage('apply') {
      steps {
        sh 'terraform apply myplan'
        sleep 120
      }
    }
    
  }
  
}
