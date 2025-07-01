FROM n8nio/n8n

# Switch to root to copy and chmod
USER root

COPY entrypoint.sh /home/node/entrypoint.sh
RUN chmod +x /home/node/entrypoint.sh
# (If you later want workflows, do it here too)

# Switch back to node for runtime
USER node

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=7A2Xg_7B@gHSiSL
ENV GENERIC_TIMEZONE=Europe/Tunis
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

EXPOSE 5678

ENTRYPOINT ["/home/node/entrypoint.sh"]

