Basic Elasticsearch and Kibana setup using Docker.

Follow these steps:
1) Execute the "generate_certificate.sh" script to make your own SSL certs using OPENSSL.

2) Change the name of key (my.key) and certificate (my.crt) file in the "docker-compose.yaml" and "default.conf" files with the one you just created using the shell script.

3) Run the "docker-compose.yaml" file up and you should be ready to go!

4) Browse to "https://172.16.17.20" (or nginx IP) to access Kibana.

NOTE:
You can change the network mode from bridge to host. Just edit the "docker-compose.yaml" file and add the proper route to Kibana in the "default.conf" file.
