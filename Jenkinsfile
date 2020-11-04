pipeline {
    
	agent {
	    node{
	        label 'master'
	    }	    
	}
	

	stages{  	
		
		stage('Import Swager Api Gateway'){
		
			steps{								
				
                sh("""aws apigateway import-rest-api --body file://music-dev-swagger.yaml	""")

                echo "#####################################"	
                echo "###  IMPORT API GATEWAY  ###"
                echo "#####################################"                
			
			}		
		}	
		
	}	

	post {
        always {   
		  cleanWs()
          echo "Eliminando..."
        }
    }	
}
