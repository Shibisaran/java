# ---------- Stage 1: Build ----------
# Builds the application with Maven and runs the unit tests (surefire).
# Maven 3.9 + Temurin/OpenJDK 21 matches the Java release used in pom.xml.
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /build

# Copy the POM first and resolve dependencies so this layer is cached
# and not re-downloaded every time source code changes.
COPY pom.xml .
RUN mvn -B dependency:go-offline

# Build the application (compiles, runs tests, packages the jar).
COPY src ./src
RUN mvn -B package

# ---------- Stage 2: Runtime ----------
# Minimal JRE-only image. No build tools are needed to run the app.
FROM eclipse-temurin:21-jre-jammy AS runtime
WORKDIR /app

# Run as a non-root user. Group/UID 10001 is arbitrary but stable
# and avoids UID collisions when mapping volumes or running with --user.
RUN useradd --create-home --user-group appuser
USER appuser

# Copy the executable jar produced in the build stage.
# NOTE: update this filename if <version> in pom.xml changes.
COPY --from=build /build/target/hello-java-1.0.0-SNAPSHOT.jar app.jar

# Run the app — main class com.example.app.App is set in the jar manifest.
ENTRYPOINT ["java", "-jar", "app.jar"]
