# Step 1: Use an official Python image as the base
FROM python:3.10-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy only requirements first and install dependencies 
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Copy the rest of the project files
COPY . .

# Step 5: Expose the port your app runs on
EXPOSE 5000

# Step 6: Command to run the Flask app
CMD ["python", "app.py"]
