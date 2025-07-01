FROM n8nio/n8n

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=7A2Xg_7B@gHSiSL
ENV GENERIC_TIMEZONE=Europe/Tunis
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

# Copy workflows and entrypoint script
COPY workflows /workflows
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

VOLUME /home/node/.n8n

EXPOSE 5678

ENTRYPOINT ["/entrypoint.sh"]

