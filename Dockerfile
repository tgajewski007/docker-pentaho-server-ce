FROM openjdk:8
EXPOSE 8080
COPY run.sh     /run.sh
RUN useradd -m -d /home/pentaho pentaho && \
    chown -R pentaho:pentaho /home/pentaho && \
    chown pentaho:pentaho /run.sh
WORKDIR /home/pentaho
USER pentaho
RUN wget -nv -O pentaho-server-ce.zip https://sourceforge.net/projects/pentaho/files/Pentaho%208.1/server/pentaho-server-ce-8.1.0.0-365.zip/download && \
    unzip pentaho-server-ce.zip > /dev/null 2>&1 && \
    rm pentaho-server-ce.zip && \
    chmod +x /run.sh
# COPY quartz.properties /home/pentaho/pentaho-server/pentaho-solutions/system/quartz 
# COPY hibernate-settings.xml /home/pentaho/pentaho-server/pentaho-solutions/hibernate
# COPY mysql5.hibernate.cfg.xml /home/pentaho/pentaho-server/pentaho-solutions/hibernate
# COPY audit_sql.xml /home/pentaho/pentaho-server/pentaho-solutions/system
# COPY repository.xml /home/pentaho/pentaho-server/pentaho-solutions/system/jackrabbit
ENTRYPOINT /run.sh