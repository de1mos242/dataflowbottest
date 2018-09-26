from python:3

WORKDIR /usr/src/app

copy requirements.txt ./
run pip install --no-cache-dir -r requirements.txt

copy . .

cmd ["flask", "run", "--host=0.0.0.0"]