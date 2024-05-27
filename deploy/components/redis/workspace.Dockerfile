FROM redis:alpine

COPY deploy/components/redis/entrypoint.sh .

RUN chmod +x entrypoint.sh

CMD ["/entrypoint.sh"]