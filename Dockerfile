# Add the base image for the App to run 
FROM python:3.9 

# Make Work directory for the container 
WORKDIR /app 

# Copy the requirements.txt file into the container directory 
COPY requirements.txt . 

# Install the requirements.txt in container 
RUN pip install -r requirements.txt 

# Run the Python app 
CMD ["python3","app.py"] 

