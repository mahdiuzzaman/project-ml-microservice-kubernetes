FROM python:3.7-stretch

## Step 1:
# Create a working directory
WORKDIR /usr/src/app

## Step 2:
# Copy source code to working directory
COPY . .

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80  


## Step 5:
# Run app.py at container launch
# hadolint ignore=DL3025
CMD python app.py

