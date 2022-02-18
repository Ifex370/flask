FROM python:

# Create a user with non root privileges

RUN groupadd --gid 5000 st2 \
    && useradd --home-dir /home/st2 --create-home --uid 5000 \
        --gid 5000 --shell /bin/sh --skel /dev/null st2


# Make a directory for our application
WORKDIR /home/st2/Desktop/Innopolis/largesystem/lab3/LS3/app


# Install dependencies 
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt


# Copy our source code 
COPY static ./static
COPY templates ./templates
COPY app.py .


# Set the user created

USER st2

# Run the application with non root privileges

CMD [ "python3", "app.py"] 
