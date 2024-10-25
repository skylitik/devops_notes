###### Dockerfile cmd
FROM ubuntu:latest
CMD ["echo", "hello"]
___
###### Dockerfile entry
FROM ubuntu:latest
ENTRYPOINT ["echo"]
___
###### Dockerfile entrycmd
FROM ubuntu:latest
ENTRYPOINT ["echo"]
cmd ["hello"]
___
