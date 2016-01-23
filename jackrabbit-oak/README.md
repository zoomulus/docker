# Jackrabbit Oak

This is a simple Docker container for Jackrabbit Oak.  Running the container in standard mode runs Jackrabbit Oak as a server, listening on all interfaces on port 8080 and using an Oak-Tar repository backend located at the path /var/lib/jackrabbit-oak/data, which is automatically exposed in the Dockerfile.

You can also run Jackrabbit Oak with your own arguments by overriding the command-line arguments with your own.  Use "oak" as the name of the command, and supply any other options you would normally provide to Jackrabbit Oak.

