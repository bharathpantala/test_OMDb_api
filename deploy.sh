#!bin/bash
########################################################################################
##################################  Deployment Script ####################################
########################################################################################

# Removing old image
sudo docker rmi  -f my_omdb
# Build the docker image.
sudo docker build -t my_omdb .
# Removing an old Running Container.
    
RUNNING=$(sudo docker inspect --format="{{ .State.Running }}" $CONTAINER 2> /dev/null)
if [$? -eq 1 ]; then
		echo "'$CONTAINER' does not exist."
	else
			sudo docker rm -f $CONTAINER
		fi
		      # run  your container
		            echo ""
			          echo " -------- Deployment Phase Started :: Building Docker container :: ......"
				        sudo docker run -d -p 80:80 --name OMDb1 my_omdb:latest

					#-Completion 
					echo "----------------------------------------"
					echo "View App deployed here " http://www.bharathpantala.cf/




