pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('stage') {
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