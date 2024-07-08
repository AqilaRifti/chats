# Dockerfile
FROM python:3.11-slim

WORKDIR /app
COPY . .
RUN python -m venv vm
RUN ./vm/bin/pip install --requirement requirements.txt && ./vm/bin/pip cache purge

ARG PORT
EXPOSE ${PORT:-8080}

CMD ./vm/bin/python -m streamlit run --server.port ${PORT:-8080} 🧭_Petunjuk.py