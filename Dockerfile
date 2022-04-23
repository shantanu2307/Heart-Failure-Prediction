# From python3
FROM python:3.8-alpine

COPY . .

RUN pip3 install -r requirements.txt

CMD [ "python3", "application.py"]

EXPOSE 5000

