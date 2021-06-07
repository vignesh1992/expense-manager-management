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
      steps {
        script {
            if (env.BRANCH_NAME == 'main') {
                echo 'I only execute on the main branch'
            } else if (env.BRANCH_NAME == 'test1'){
                echo 'I execute elsewhere test1'
            } else if (env.BRANCH_NAME == 'test2'){
                echo 'I execute elsewhere test2'
            }         
        }
      }
    }
    
    stage('Publish') {
      steps {
        sh 'make pack-lambdas'  
      }
    }
  }
}