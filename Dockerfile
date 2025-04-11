FROM python:3.11

COPY requirements.txt .
RUN fastapi pytest httpx uvicorn pydantic-settings

WORKDIR /app
COPY src .

ENTRYPOINT [ "python", "main.py" ]