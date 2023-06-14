#Docker file, Docker image, Docker Container
FROM python:3.9

WORKDIR /code

COPY requirements.txt requirements.txt

# RUN echo $(python3 -m site --user-base)

# ENV PATH /home/$bensi/.local/bin:${PATH}

RUN pip install --no-cache-dir --upgrade -r requirements.txt


COPY . .

CMD ["uvicorn", "APIdockerEX:app", "--host", "0.0.0.0", "--port", "8000"]


#ADD APIdockerEX.py .

#RUN pip install fastapi 

#CMD ["python", "./APIdockerEX.py"]