FROM elasticsearch:6.0
RUN bin/elasticsearch-plugin install ingest-attachment
