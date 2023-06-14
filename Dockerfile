#Docker file, Docker image, Docker Container
FROM python:3.9

ADD APIdockerEX.py .

RUN pip install fastapi 

CMD ["pyhton", "./APIdockerEX.py"]