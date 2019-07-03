pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        checkout scm
        sh 'mkdir -p creds'
        sh 'echo $SVC_ACCOUNT_KEY > serviceaccount.json'
      }
    }
    stage('TF Plan') {
      steps {
        sh 'terraform init'
        sh 'terraform plan -out myplan'
      }
    }
    stage('TF apply') {
      steps {
        sh 'terraform apply -input=false myplan'
      }
    }
  }
  environment {
    SVC_ACCOUNT_KEY = 'credentials(\'GCP-USER\')'
  }
}