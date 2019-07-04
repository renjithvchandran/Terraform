pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('stage') {
      steps {
        sh 'terraform plan -out myplan'
        sh 'pwd'
      }
    }
  }
  environment {
    GOOGLE_CREDENTIALS = 'credentials(\'GCP-USR\')'
  }
}
