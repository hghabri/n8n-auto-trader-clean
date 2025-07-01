FROM n8nio/n8n

USER root

COPY entrypoint.sh /home/node/entrypoint.sh
RUN chmod +x /home/node/entrypoint.sh

# Add this line for debugging:
RUN ls -l /home/node/entrypoint.sh

USER node

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=7A2Xg_7B@gHSiSL
ENV GENERIC_TIMEZONE=Europe/Tunis
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

EXPOSE 5678

ENTRYPOINT ["/home/node/entrypoint.sh"]

