FROM selenium/standalone-chrome

USER root

WORKDIR /code

COPY /scraper /code

COPY deploy/components/scraper/setup.sh .
RUN chmod u+x /code/setup.sh && /code/setup.sh

ENV CHROME_PATH /usr/bin/google-chrome

EXPOSE 5000 

CMD ["python3", "app.py"]