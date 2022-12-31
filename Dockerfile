# Start with container that embeds elasticsearch, logstash and kibana
FROM sebp/elk

# Define gelf as possible input to logstash
ADD ./03-gelf-input.conf /etc/logstash/conf.d/03-gelf-input.conf

# Define output to contain appropriate index
ADD ./30-output.conf /etc/logstash/conf.d/30-output.conf

# expose GELF's default UDP port (12201)
EXPOSE 12201/udp
