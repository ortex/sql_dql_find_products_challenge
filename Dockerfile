FROM hexlet/hexlet-javascript

RUN apt-install postgresql-9.3 postgresql-client
RUN npm i -g pg-promise

COPY exercise/init.sql /root/init.sql

RUN /etc/init.d/postgresql start && \
      sudo -u postgres createuser nobody && \
      sudo -u postgres createdb nobody && \
      sudo -u postgres psql nobody -c "REVOKE SELECT ON pg_proc FROM public;" && \
      sudo -u postgres psql nobody -c "REVOKE SELECT ON pg_proc FROM nobody;" && \
      sudo -u nobody psql < /root/init.sql;
