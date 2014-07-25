## Docker for Drupal website - based on Ubuntu14.04 image with PHP5.5

### To make it work

#### Build the image

From inside this folder: 
`# docker build -t="<user>/<name>:<tag>" .`

#### The code is on a separate folder (not in the container). 
Example: `/home/<myuser>/<myapp>`
 
#### Create a log folder in your code folder. It's where the Apache logs are going to be stored 
Example: `mkdir /home/<myuser>/<myapp>/log`

#### Give the permissions to Apache on the folder: 
Example: `chown -R www-data:www-data /home/<myuser>/<myapp>`

#### Run the container
`docker run -d -p 80:80 -v /home/<myuser>/<myapp>:/var/www <user>/<name>:<tag>`

Note: the database host in your app configuration shouldn't be set to localhost (localhost is the container)
