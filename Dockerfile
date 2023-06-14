FROM python:3.8

WORKDIR /usr/src/RewardSignalDesign

RUN pip install --no-cache-dir pyyaml==6.0

COPY . .

RUN pip install --no-cache-dir -e .

CMD [ "python", "TestingScripts/TrainVehicles.py" ]

