FROM python:3.13-slim

WORKDIR /app

COPY . .

RUN pip install uv
RUN uv sync

CMD ["/app/.venv/bin/python", "main.py"]