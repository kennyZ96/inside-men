FROM debian:stable

RUN mkdir /workspace

COPY ./output/inside-men-amd64-debian /workspace/inside-men-amd64-debian

EXPOSE 8080

CMD /workspace/inside-men-amd64-debian
