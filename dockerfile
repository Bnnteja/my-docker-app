# Use an official Python runtime as a parent image
FROM python:3.9.20-slim-bullseye

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install the dependencies specified in the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 9000

# Command to run the application
CMD ["python", "app.py"]
