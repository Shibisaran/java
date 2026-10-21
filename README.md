# Java Programming with Maven

A simple Java application built using **Java 21 and Apache Maven**, demonstrating Java application development, dependency management, unit testing, and project packaging.

## 📌 Project Overview

This project contains a basic Java application that generates personalized greetings. It uses a modular structure with separate classes for application execution and greeting logic.

The project also includes unit tests using **JUnit 5** to verify the application's behavior.

## 🛠️ Technologies Used

- **Java 21** – Programming language
- **Apache Maven** – Build and dependency management
- **JUnit 5** – Unit testing framework
- **Maven Surefire Plugin** – Automated test execution
- **Git & GitHub** – Version control and source code management

## 📂 Project Structure

```text
java/
├── README.md
└── java-JDK/
    ├── pom.xml
    └── src/
        ├── main/
        │   └── java/
        │       └── com/example/app/
        │           ├── App.java
        │           └── Greeter.java
        └── test/
            └── java/
                └── com/example/app/
                    └── GreeterTest.java
```

## ✨ Features

- Generates personalized greeting messages.
- Accepts a name as a command-line argument.
- Uses a default greeting when the name is missing, blank, or null.
- Removes unnecessary whitespace from names.
- Includes automated unit tests using JUnit 5.
- Supports building and packaging the application with Maven.

## ⚙️ Prerequisites

Install the following tools before running the project:

- Java Development Kit (JDK) 21
- Apache Maven 3.9 or a compatible version

Verify your installation:

```bash
java -version
javac -version
mvn -version
```

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Shibisaran/java.git
cd java
```

### 2. Navigate to the Maven project

```bash
cd java-JDK
```

### 3. Build the project

```bash
mvn clean package
```

This command compiles the source code, runs the unit tests, and packages the application into a JAR file.

### 4. Run the application

Run the application with a name:

```bash
mvn exec:java -Dexec.args="Shibi"
```

**Expected output:**

```text
Hello, Shibi!
```

Run without a name:

```bash
mvn exec:java
```

**Expected output:**

```text
Hello, Java!
```

### 5. Run unit tests

```bash
mvn test
```

The tests verify personalized greetings, whitespace handling, and fallback behavior for blank or null names.

## 🧪 Testing

The project uses JUnit 5 for automated testing.

Current test scenarios include:

- Greeting a user by name.
- Trimming leading and trailing whitespace.
- Returning a default greeting for blank or null input.

Test reports are generated under:

```text
target/surefire-reports/
```

## 📦 Build Output

After a successful build, Maven generates the packaged JAR file at:

```text
target/hello-java-1.0.0-SNAPSHOT.jar
```

The project configures `com.example.app.App` as the JAR's main class.

## 🎯 Learning Objectives

This project provides hands-on practice with:

- Java application structure and classes.
- Methods and conditional logic.
- Command-line arguments.
- Maven project configuration and build lifecycle.
- Writing and executing unit tests.
- Packaging Java applications into JAR files.

## 👨‍💻 Author

**Shibisaran M**

- GitHub: [Shibisaran](https://github.com/Shibisaran)
- LinkedIn: [Connect with me](https://www.linkedin.com/in/shibisaran-m-035492213/)

---

⭐ If you find this repository useful, feel free to star it!
