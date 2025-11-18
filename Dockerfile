FROM n8nio/n8n:latest

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Use Render's assigned port
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0

# Your Render URL
ENV WEBHOOK_URL=https://yoyo0125.onrender.com/

# Expose the Render port
EXPOSE $PORT

CMD ["n8n"]
