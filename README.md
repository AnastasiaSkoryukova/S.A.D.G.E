# Nano Challenge X (Daiquiri) - Server side Swift

# About
This project was build with 4th version of Vapor - web framework written in Swift which can be used to create REST APIs. It gives an opportunity to send requests to PostgreSQL database, which contains the information about Italian cities(names, coordinates, population etc). Created routes were designed to get the information, post new records to the database and delete the records which are no longer needed. Vapor's Object Relational Mapping tool(ORM), Fluent, makes the interaction with the database type-safe and easy, without the necessity to write queries.

# Learning Goals
We set the goal to learn how to:
- create, build and run the vapor project,
- configure and populate a database,
- How to deploy a server side application using the Vapour framework,
- Gain experience using the swift syntax to code server side applications,
- Gain insights in writing different types of API web service requests such as GET, POST, DELETE,
- Gain experience deploying a database, connected to a service side / web application,
- Gain experience performing database queries triggered from Web service requests, using ORM (Object relational mapping),
- Gain experience making database record updates such as CRUD, specifically CREATE, READ and DELETE

# Experience
Our project experience was fast but quite challenging, the biggest difficulty we had is to find good resources/examples because despite the fresh community and the exhaustive documentation the framework is very new and is less used than other alternatives.
We found quite interesting how the Vapor - Fluent framework integrates server comunication with http requests seamlessly with the swift environment, and we think it’s a great value to develop applications integrated with net services.

# Deployment information / instructions 
The following details instructions for deploying a Vapor environment on a MAC OS (via Homebrew), and additional technologies such as a database

## Install Vapor 
```
$ brew install vapor
```

### Create a new Vapor Project
```
$ vapor <project name> -n
```

### Start Vapor 
```
$ cd <project name>
$ open Package.swift
```

## PostgreSQL
```
$ brew install postgres
```

### Installing and starting / stopping Postgresql Services
```
$ brew services
$ brew services start postgresql
$ brew services stop postgresql
```



# Technologies used and versions
- Vapor
  - Framework (v4.55.3)
  - Toolbox (v18.3.6)
- PGAdmin (v6.7)
- PostgreSQL (v14.2)
- Docker (v20.10.13, build a224086)
- Xcode (v13.3, build 13E113)

# Contributors
Repo was done by @simonitalia, @AnastasiaSkoryukova, @dariovigi and @Gleswam
