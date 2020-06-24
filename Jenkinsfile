pipeline {
   agent {
        docker{
            image 'python-chrome'
            args '--network=host'
        }   
   }

   stages {
      stage('Build') {
         steps {
            sh 'pip install robotframework'
            sh 'pip install robotframework-seleniumlibrary'
         }
      }
      stage('Test') {
         steps {
            sh 'robot -d logs/ -v navegador:headlesschrome tests/'
         }
         post {
            always {
               robot outputPath: 'web/logs', otherFiles: '**/*.png'
            }
         }
      }
   }
}