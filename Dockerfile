FROM mcr.microsoft.com/mssql/server:2019-latest
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=controlacademico
COPY ./db /
WORKDIR /db
CMD /bin/bash ./entrypoint.sh
