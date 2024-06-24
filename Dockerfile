# Add the base image for the App to run 
FROM python:3.9 

# Make Work directory for the container 
WORKDIR /app 

# Copy the requirements.txt file into the container directory 
COPY requirements.txt . 
# Copy all the files in the folder into Container 
COPY . . 
# Install the requirements.txt in container 
RUN pip install -r requirements.txt 
# Expose the port 
EXPOSE 5000
# Run the Python app 
CMD ["python3","app.py"] 

