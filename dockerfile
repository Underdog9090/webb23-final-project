# Use a base image with Python
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt /app/

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files
COPY . /app/

# Expose the port
EXPOSE 8000

# Command to run the Django server
CMD ["python", "blog_project/manage.py", "runserver", "0.0.0.0:8000"]
