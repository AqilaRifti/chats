# Dockerfile
FROM python:3.11-slim

WORKDIR /app
COPY . .
RUN python -m venv vm && ./vm/bin/activate
RUN pip install --requirement requirements.txt && pip cache purge

ARG PORT
EXPOSE ${PORT:-8080}

CMD streamlit run --server.port ${PORT:-8080} 🧭_Petunjuk.py