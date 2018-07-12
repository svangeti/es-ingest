FROM elasticsearch:6.3.1
RUN bin/elasticsearch-plugin install ingest-attachment
