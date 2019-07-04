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
      }
    }
  }
  environment {
    GOOGLE_CREDENTIALS = 'credentials(\'GCP-USR\')'
  }
}