Test_OMDb_api in Dockerized ENV

test_OMDb_api

# Developing UI

* UI built with HTML and JavaScript. 
* Used JQUERY with JS file from https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js to use qurybox.
* Called OMDb API through a script in index.html by passing API and TOKEN.
* Using the funtion getanswer(q) method we called  API.
* Using the function(rawdata) we made a query by declaring the variables Title,Year and IMDb URL, and POSTER.
    Saved as index.html

# Building a Docker IMAGE to ship our program to NGINX.

* Written a Dockerfile to build an Image.
   -> Used Ubuntu:16.04 as a base image.
   -> Installing NGINX webserver
   -> Copying the index.html to Docker Image.
   -> Exposing 80 port ,whereas nginx by default running on 80(http) port.
   -> Initial command CMD ["nginx","-g","daemon off;"]
   -> To BUILD manually the image, Execute the COMMAND on DOCKER host.
   
       # sudo docker build -t my_omdb:latest .
       
# To deploy Manually on a docker host

Run the following command on docker host.
        
      # sudo docker run -d --name OMDb1 -p 80:80 my_omdb:latest
      
# Delivering to Docker host as a service 

    Deploy as a service use the docker-compose.yml 
    
    to execute it on a docker host
    
    # docker-compose up -d
    
    
# To deploy automatically to any Environment.


  Use that deployment Script
  
  
  to execute:
  
    # chmod +x deploy.sh
    # ./deploy.sh
    
    
   
# testing the application

     Once deployed to a docker host.
     
     Test with  http://ip-of-host/




     
    
       
   


