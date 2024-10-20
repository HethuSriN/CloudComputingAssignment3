# Use a lightweight Python image
FROM python:3.9-slim

# Create and set the working directory inside the container
WORKDIR /home/data

# Copy text files to /home/data
COPY IF.txt AlwaysRememberUsThisWay.txt /home/data/

# Copy the Python script to /home/data
COPY scripts.py /home/data/

# Create the output directory
RUN mkdir -p /home/data/output

# Install any necessary Python packages (if needed)
# RUN pip install -r requirements.txt  # Uncomment if there are dependencies

# Set the default command to run the Python script
CMD ["python", "/home/data/scripts.py"]
