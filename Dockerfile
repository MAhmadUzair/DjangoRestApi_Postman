# Use an official Python runtime as a parent image
FROM python:3.x  # Replace '3.x' with the desired Python version

# Set environment variables for running in a non-interactive mode
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container to /app
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app/

# Expose a port to the host (replace 8000 with the port your Django app runs on)
EXPOSE 8000

# Define the command to run your application (replace 'yourappname' with your app's name)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
