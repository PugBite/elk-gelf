# elk-gelf

Docker image based on sebp/elk adding gelf input to elk. There are two additional files added to logstash cofig, one for defining input as `gelf` and another defining output for elasticsearch with index prefix `docker-log`.

