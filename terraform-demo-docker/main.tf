resource "docker_image" "nginx" {               
  name = "nginx:latest"
}

resource "docker_container" "my_container" {   
  # Specifying the name of the container as my_container
  name = "my_container"  
  image = docker_image.nginx.latest       
}