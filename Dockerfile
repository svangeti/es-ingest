FROM elasticsearch:6.3
RUN bin/elasticsearch-plugin install ingest-attachment
