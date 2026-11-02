How to connect to the database.

Step 1: Copying the repository URL:
Go to the main github page of the repository and click on the <> Code button.
This will allow you to copy the GitHub repository link.

Step 2: Terminal commands:
# Clone your new repository
git clone [https://github.com/yourname/docker-database-project.git](https://github.com/sgood3/docker-database-project.git)

Step 3: Running Docker Container
In the terminal type, docker exec -it my_project_db psql -U student -d projectdb

Step 4: Opening Docker Container
Now open docker and the docker environment should be running.

Step 5: Stopping the Container
To stop the container either press pause in docker.desktop or go to vscode and run docker compose down in terminal.
