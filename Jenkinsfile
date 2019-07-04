pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('checkout') {
      steps {
        checkout scm
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
        sh 'terraform destroy "myplan"'
      }
    }
  }
  environment {
    GOOGLE_CREDENTIALS = credentials('GCP-USER')
  }
}
