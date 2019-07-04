pipeline {
  agent none
  stages {
    stage('stage') {
      steps {
        sh 'terraform plan -out myplan'
      }
    }
  }
  environment {
    GOOGLE_CREDENTIALS = 'credentials(\'GCP-USR\')'
  }
}