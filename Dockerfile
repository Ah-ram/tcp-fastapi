FROM arm64v8/python:3.12

COPY ./app /app
COPY requirements.txt /app
WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 80

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]