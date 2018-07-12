FROM elasticsearch:6.3.0
RUN bin/elasticsearch-plugin install ingest-attachment
