FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip install --upgrade setuptools pip wheel
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
