pipeline {
  agent any
  
  tools {nodejs "nodejs"}
    
  stages {
        
    stage('Pre') {
      steps {
          sh 'echo "Pre stage"'
        }
    }      
     
    stage('Build') {
      steps {
        sh 'echo "Build stage"'
      }
    }
    
    
    stage('Publish') {
      steps {
        sh 'echo "publish lambdas"'  
      }
    }
  }
}