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
        sh 'mkdir -p myterraform'
        sh 'echo $GOOGLE_CREDENTIALS | base64 -d > keyfile.json'
        sh 'cat keyfile.json'
        sh 'pwd'
        sh 'ls -ltr'
      }
    }
    stage('plan') {
      steps {
        sh 'pwd'
        sh 'terraform init'
        sh 'terraform plan -out myplan'
      }
    }
  }
  environment {
    GOOGLE_CREDENTIALS = credentials('GCP-USER')
  }
}
