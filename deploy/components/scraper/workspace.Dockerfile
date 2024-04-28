#image includes chrome / chromedriver
FROM selenium/standalone-chrome

WORKDIR /app
USER root

# # Copy the requirements.txt file into the container at /app
# COPY requirements.txt /app/
# # Install Scrapy dependencies 
# RUN pip install --no-cache-dir -r requirements.txt

COPY deploy/components/hub/setup.sh .
RUN chmod u+x /code/setup.sh && /code/setup.sh

COPY . /app

ENV CHROME_PATH /usr/bin/google-chrome

EXPOSE 5000 

CMD ["python3", "app.py"]