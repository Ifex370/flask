FROM python:3.8.12-bullseye

# Make a directory for our application
WORKDIR /app

# Install dependencies 
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# Copy our source code 
COPY /static .
COPY /templates .
COPY app.py .

# Run the application
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"] 