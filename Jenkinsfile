pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        git(url: 'https://github.com/michaeldommet/gcp-instance', branch: 'master', poll: true)
      }
    }

  }
}