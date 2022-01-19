FROM rocker/r-ver:4.0.4


WORKDIR /app/src

COPY . .

RUN Rscript -e "install.packages('plumber')"

EXPOSE 8080

CMD [ "Rscript", "server.R" ]
