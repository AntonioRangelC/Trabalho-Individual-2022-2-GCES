FROM python:3.8.10

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN python -m pip install --upgrade pip
RUN pip install poetry
RUN poetry add $( cat requirements.txt )

CMD [ "python", "src/main.py" ]


# FROM python:3.8.10
# WORKDIR /app 
# COPY requirements.txt requirements.txt
# RUN pip3 install -r requirements.txt
# COPY ./src /app/src
# CMD ["python", "src/main.py"]