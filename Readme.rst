
A Very Simple WebDAV container
==============================

This container runs an Apache server which is configured to server a specific folder via WebDAV.
It is intended to run as non root user. Currently the default user is webdav:users with
user and group id 1000:100.

Required Configuration:
-----------------------

These values are required.

    WEBDAV_USER_NAME
      The user name that can be used to log in to the WebDAV server.

    WEBDAV_TOKEN
      The password to log in.

There are two ways to log in. Either user `WEBDAV_TOKEN` as user name with no password,
or user both `WEBDAV_USER_NAME` as user name and `WEBDAV_TOKEN` as password.


Default Configuration:
----------------------

These values can be overridden when starting the container.

    WEBDAV_HOME
      The folder to serve. Default value is `/home/webdav`

    WEBDAV_HOST
      The interface to listen on. Default is empty to instruct Apache to listen
      on all interfaces.

    WEBDAV_PORT
      The port to listen on. Default is 8080.

