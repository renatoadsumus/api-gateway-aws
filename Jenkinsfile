pipeline {
    
	agent {
	    node{
	        label 'master'
	    }	    
	}
	

	stages{  	
		
		stage('Create Api'){
		
			steps{								
				
                sh(""" ./create-api.sh """)

                echo "#####################################"	
                echo "###  IMPORT API GATEWAY  ###"
                echo "#####################################"                
			
			}		
		}	
		
		stage('Deploy Api'){
		
			steps{								
				
//				echo "${env.APIID}"
//                sh(""" aws apigateway create-deployment --rest-api-id ${env.APIID} --stage-name dev --region us-east-1 """)
				

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
