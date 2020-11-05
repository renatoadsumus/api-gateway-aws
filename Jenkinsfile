pipeline {
    
	agent {
	    node{
	        label 'master'
	    }	    
	}
	

	stages{  	
		
		stage('Import Swager Api Gateway'){
		
			steps{								
				
                sh(""" ./create-api.sh """)

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
