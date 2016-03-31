This Dockerfile builds a standalone Jupyterhub server that
can export notebooks to PDF.  
Users can be added using the "adduser" command.  
Because it is standalone and the users are created as linux
users in the same machine, this don't scale well. Any
suggestions on how to fix it are welcome.  
