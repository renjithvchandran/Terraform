pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('checkout') {
      steps {
        sh 'mkdir -p myterraform'
        sh 'echo $GOOGLE_CREDENTIALS > keyfile.json'
        sh 'ls -ltr'
      }
    }
    stage('plan') {
      steps {
        sh 'terraform init'
        sh 'terraform plan -out myplan'
      }
    }
  }
  environment {
    GOOGLE_CREDENTIALS = 'credentials(\'GCP-USR\')'
  }
}