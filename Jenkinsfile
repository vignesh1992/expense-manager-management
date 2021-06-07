pipeline {
  agent any
  
  tools {nodejs "nodejs"}
    
  stages {
        
    stage('Pre') {
      steps {
          sh 'echo "Pre stage"'
          sh 'printenv'
        }
    }      
     
    stage('Build') {
      when {
         branch "main"
      }
      steps {
        sh 'echo "Inside Main true"'
      }
    }
    
    
    stage('Publish') {
      steps {
        sh 'echo "publish lambdas"'  
      }
    }
  }
}