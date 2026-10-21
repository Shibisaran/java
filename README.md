# Java Application with Maven and Jenkins CI Pipeline

A simple Java application built using **Java 21 and Apache Maven**, with unit testing using JUnit 5 and Continuous Integration (CI) integration using Jenkins.

## Project Overview

This project demonstrates Java application development, dependency management, unit testing, and automated build integration using Jenkins. The source code is maintained in GitHub, while Jenkins is configured to clone the repository and execute Maven build and testing commands.

## Technologies Used

- **Programming Language:** Java 21
- **Build Tool:** Apache Maven
- **Testing Framework:** JUnit 5
- **CI Tool:** Jenkins
- **Version Control:** Git and GitHub

## Features

- Simple Java greeting application.
- Handles user-provided names through command-line arguments.
- Provides a default greeting for blank or null input.
- Unit tests for greeting functionality.
- Maven-based compilation, testing, and packaging.
- Jenkins integration for automated build and test execution.
- GitHub integration for source code management.

## Project Structure

```text
java/
├── README.md
└── java-JDK/
    ├── pom.xml
    └── src/
        ├── main/
        │   └── java/
        │       └── com/
        │           └── example/
        │               └── app/
        │                   ├── App.java
        │                   └── Greeter.java
        └── test/
            └── java/
                └── com/
                    └── example/
                        └── app/
                            └── GreeterTest.java
```

## Application Details

The application accepts a name as a command-line argument and displays a greeting. If no name is supplied, it uses `Java` as the default value.

Example output:

```text
Hello, Java!
```

You can also supply a custom name:

```text
Hello, Shibi!
```

The `Greeter` class handles the greeting logic, while `App` is the application's entry point.

## Prerequisites

Install the following tools before running the project:

- Java Development Kit (JDK) 21
- Apache Maven
- Git
- Jenkins (for CI pipeline execution)

Verify your local installations:

```bash
java -version
mvn -version
git --version
```

## Run the Project Locally

### 1. Clone the repository

```bash
git clone https://github.com/Shibisaran/java.git
cd java/java-JDK
```

### 2. Compile the application

```bash
mvn clean compile
```

### 3. Run unit tests

```bash
mvn test
```

### 4. Package the application

```bash
mvn clean package
```

### 5. Run the application

```bash
java -cp target/classes com.example.app.App
```

To pass a custom name:

```bash
java -cp target/classes com.example.app.App Shibi
```

## Unit Testing

The project uses JUnit 5 to validate the greeting functionality.

The test cases cover:

- Greeting a user with a specified name.
- Removing leading and trailing whitespace from a name.
- Returning the default greeting for blank input.
- Returning the default greeting for null input.

Run all tests using:

```bash
mvn test
```

## Jenkins CI Pipeline Integration

Jenkins is configured to integrate with this GitHub-hosted Java project and automate the Maven build and testing process.

### Jenkins Configuration

The following setup has been completed:

- **Java Path Setup:** Configured the Java installation and environment path.
- **Maven Tool Installation:** Installed and configured Maven in Jenkins.
- **GitHub Repository Cloning:** Configured Jenkins to retrieve the project source code from GitHub.
- **Build and Test Commands:** Maven commands can be executed through Jenkins to compile the application and run unit tests.

### CI Workflow

```text
GitHub Repository
       |
       v
Jenkins
       |
       v
Clone Source Code
       |
       v
Configure Java and Maven
       |
       v
Maven Compilation
       |
       v
Run JUnit Tests
       |
       v
Package Application
       |
       v
Build Result
```

Since the Maven project is located inside `java-JDK/`, Jenkins must execute Maven commands from that directory or use the correct `pom.xml` path.

Example Maven commands for Jenkins:

```bash
cd java-JDK
mvn clean compile
mvn test
mvn package
```

These commands can be adapted to the build steps or pipeline stages configured in Jenkins.

## Build Output

After a successful Maven package operation, the generated JAR file is available under:

```text
java-JDK/target/hello-java-1.0.0-SNAPSHOT.jar
```

The `target/` directory contains generated build files and should generally not be committed to Git.

## Learning Objectives

This project provides practical experience with:

- Java application development.
- Maven project structure and dependency management.
- JUnit unit testing.
- Git and GitHub source code management.
- JDK and Maven configuration in Jenkins.
- CI fundamentals and automated build validation.

## Repository

GitHub: https://github.com/Shibisaran/java

## Author

**Shibi Saran M**

- GitHub: https://github.com/Shibisaran
- LinkedIn: https://www.linkedin.com/in/shibisaran-m-035492213/
