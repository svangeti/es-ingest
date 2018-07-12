# es-ingest
ElasticSearch With Ingest Plugin

Setup

$ docker run -d -p 9200:9200 -p 9300:9300 svangeti/es-ingest

Using

Setting up a pipeline

$ curl -XPUT "http://localhost:9200/_ingest/pipeline/attachment" -d \
  '{ \
    "description" : "Extract attachment information", \
    "processors" : [ \
        { \
            "attachment" : {"field" : "data"} \
        } \
    ] \
  }'
  
Adding a file to the index

$ curl -XPUT "http://localhost:9200/my_index/my_type/my_id?pipeline=attachment" -d \
  '{ \
    "data": "e1xydGYxXGFuc2kNCkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0DQpccGFyIH0=" \
  }'
  
Searching for the files

$ curl -XPOST "http://localhost:9200/_search" -d'{}'
