# Basic Dockerfile Project

This project demonstrates how to create a simple `Dockerfile` that uses the Alpine Linux base image and prints a customizable message to the console.

## Dockerfile Details

### Dockerfile Content
```dockerfile
# Use the latest Alpine Linux image as the base image
FROM alpine:latest

# Set a default argument value for the name
ARG NAME="World"

# Set the command to print the message and then exit
CMD echo "Hello, ${NAME}!"
```

### Key Features
- **Base Image**: The project uses `alpine:latest`, a minimal and lightweight Linux distribution.
- **Customizable Message**: The `ARG` instruction allows passing a name during the build process to customize the output.

## How to Build and Run the Docker Image

### Step 1: Save the Dockerfile
Ensure the `Dockerfile` is saved in the root directory of your project.

### Step 2: Build the Docker Image
Run the following command to build the image:
```bash
docker build -t hello-image --build-arg NAME=<YourName> .
```
Replace `<YourName>` with the name you want to include in the message. If no name is provided, it defaults to "World."

### Step 3: Run the Docker Container
Run the built image using the command:
```bash
docker run hello-image
```
This will print the message:
```
Hello, <YourName>!
```
to the console.

## Project Link
For more details and resources, check out the project page: [Basic Dockerfile Project](https://roadmap.sh/projects/basic-dockerfile)

