# eNGee Platform
The eNGee platform is designed to host browser-based multiplayer games, primarily using text. The system enables users to create new rooms for play and customise them with rules and gamemodes. Currently, there is only the [Consequences](https://en.wikipedia.org/wiki/Consequences_(game)) game mode available.

## Deployment
The platform is split into three sections. This Readme is contained in the [Deployment](http://github.com/NDevelopN/eNGee-Deployment) repo. The client-side javascript is in the [Client](http://github.com/NDevelopN/eNGee-Client) repo and the backend golang server is in the [Server](http://github.com/NDevlopN/eNGee-Server) repo.

### Docker compose
This Deployment repo contains the files needed to automate the deployment of the platform in local containers. This process will pull from the other two repos during creation of the containers. 

To deploy the platform in this way, a running [Docker](https://www.docker.com/) engine is required.

Download this repository and edit the .env file at its root directory, setting the variables to match your local environment (note: the HOST must be changed to your IP address, as localhost will resolve internally for the containers). Then run `docker compose up` and the platform should deploy on its own.

The provided dockerfiles can be used to manually create your own containers for alternative deployments, but keep in mind that the environment variables will need to be set if not using docker compose. The database will also need to be created.

### Manual deployment
The platform can be deployed manually, provided dependencies are met. The Client requires [npm](https://www.npmjs.com/) and the Server requires [Golang](https://go.dev/). A [Postgres](https://www.postgresql.org/) database server also needs to be running. The three components can run in one environment or across distributed systems.

#### Database configuration
1. Set up a Postgres server and database. Be sure to take note of database and user configuration.
2. Create the tables defined in the 01-init.sql file of this directory. 

#### Server Install
1. Download the server repo.
2. Edit the config.json file in the root directory of the server so thar the variables match your environment. Ensure the database variables match those of your postgres configuration.
3. Use `go build` to build the server and `go run main.go` to deploy it.
   
#### Client Install
1. Download the client repo. 
2. Edit the config.json file in the root directory of the client so that the variables match your environment.
3. Use `deploy.sh 0` to build and deploy the client.
