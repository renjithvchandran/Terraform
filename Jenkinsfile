pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('stage') {
      steps {
        sh 'pwd'
        sh 'ls -ltr'
      }
    }
  }
  environment {
    GOOGLE_CREDENTIALS = 'credentials(\'GCP-USR\')'
  }
}