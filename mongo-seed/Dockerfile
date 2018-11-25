FROM mongo

COPY ./data/restaurant.json /restaurant.json

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1/wait /wait
RUN chmod +x /wait

CMD /wait && mongoimport --host mongo --port 27017 -d $DB_DATABASE -c restaurant --type json --mode upsert --file /restaurant.json