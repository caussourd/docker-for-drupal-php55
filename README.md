## Docker for Drupal website - based on Ubuntu14.04 image with PHP5.5

### To make it work

#### Requirements

 - fig

To install fig: http://www.fig.sh/install.html

#### Add your code

Add your code in a folder called `web/`

#### Start the app

`fig run -d`

#### Good to know

 - Stop the app: `fig stop`
 - Remove the app: `fig rm`
 - Rebuild the app: `fig build`

#### Troubleshooting

##### Permissions

You may need to change the permissions on the web folder.

Example: `chown -R www-data:www-data web/`

##### Database

Note: the database host in your app configuration shouldn't be set to localhost (localhost is the container)

Improvements: a container could be created for the DB and linked to the `drupal` container
