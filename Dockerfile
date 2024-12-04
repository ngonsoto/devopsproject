FROM python:3@sha256:7861d60e586c47e7624286e4e78b086a936fb5284d47fe5e5c5068a9ddac6fb1

WORKDIR /usr/src/app

COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]