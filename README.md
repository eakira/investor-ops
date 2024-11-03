# Investor-Ops

**Investor-Ops** is the foundational infrastructure repository for the Investor Project. This repository contains configuration and setup instructions for essential backend technologies, including MongoDB, ELK, and Redis, which support the project's core services and data management.

## Overview

Investor-Ops provides the necessary infrastructure components to support the development and operation of investment-related services. By centralizing the configuration of databases, logging, caching, and monitoring tools, Investor-Ops serves as a stable foundation for building and scaling the Investor Project.

## Technologies Used

- **MongoDB**: Used as the primary database for storing and managing investment data.
- **ELK Stack**: (Elasticsearch, Logstash, and Kibana) Used for centralized logging, data visualization, and monitoring.
- **Redis**: Employed for caching and real-time data processing to enhance performance and responsiveness.

## Getting Started

To set up the infrastructure locally or in a development environment, follow these steps:

### Prerequisites

Ensure Docker and Docker Compose are installed on your machine.

- [Docker Installation Guide](https://docs.docker.com/get-docker/)
- [Docker Compose Installation Guide](https://docs.docker.com/compose/install/)

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/eakira/investor-ops.git
   cd investor-ops
   ```

2. Copy the .env configuration file:

   ```bash
    cp .env.example .env
    ```

    Note: Make sure to update any default passwords or sensitive information in the .env file before starting the services.

3. Use the Makefile to set up the network and initialize the services:

 ```bash
make new
```

*  ```make new```: This command will create a Docker network called investor-project and set up the necessary services. It runs the tls, setup, and background services (-d).

*  ```make start```: Starts the infrastructure services in detached mode (-d).

*  ```make stop```: Stops all running Docker containers.


## Accessing Services

* MongoDB: Accessible on localhost:27017

* Elasticsearch: Accessible on localhost:9200

* Kibana: Accessible on localhost:5601

* Redis: Accessible on localhost:6379


⚠️ Note: Adjust the configuration in docker-compose.yml as needed for different environments.



## Usage

The Investor-Ops repository is intended for infrastructure setup and management. To integrate these services with the Investor Project, make sure to configure the connections in your application's environment files.

