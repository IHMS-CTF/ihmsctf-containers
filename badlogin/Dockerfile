FROM python:3.12-alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
COPY templates ./templates
COPY static ./static
COPY entrypoint.sh .

# Create user FIRST
RUN adduser -D ctf \
 && chown -R ctf:ctf /app \
 && chmod +x /app/entrypoint.sh

USER ctf

EXPOSE 5000

ENTRYPOINT ["/app/entrypoint.sh"]
