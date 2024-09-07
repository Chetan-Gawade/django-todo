# Use the official Python image from the Docker Hub
FROM python:3.9

# Install Django
RUN pip install django==3.2

# Copy application code
COPY . .

# Run database migrations
RUN python manage.py migrate

# Define the command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]

