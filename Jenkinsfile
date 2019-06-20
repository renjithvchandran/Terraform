pipeline {

  agent {
    node {
        label 'master'
    }
  }    
  environment {
    SVC_ACCOUNT_KEY = credentials('myproject')
  }

  stages {

    stage('Checkout') {
      steps {
        checkout scm
        sh 'mkdir -p creds' 
        sh 'echo $SVC_ACCOUNT_KEY > ./creds/serviceaccount.json'
      }
    }

    stage('TF Plan') {
      steps {
          sh 'terraform init'
          sh 'terraform plan -out myplan'
        }
           
    }
  }
}   
