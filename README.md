# RewardSignalDesign
This repo contains the code for the paper, ["From Navigation to Racing: Reward Signal Design for Autonomous Racing"](https://arxiv.org/abs/2103.10098)

## Overview
- We evaluate different reward signals on F1/10th autonomous cars
- We test the reward signals using a planning, perception and control navigation stack with a minimum curvature global planner and the [Reference Modification local planner](https://arxiv.org/abs/2102.11042)

## Code Overview
- The repo contains two scripts to generate the results which are located in the ```TestingScripts``` folder
- The ```TrainVehicles.py``` Script will train the vehicles with the different reward signals
- The ```TestVehilces.py``` script, evaluated the vehicles.
- All the training and evaluation is done on the porto F1/10th race track. 

## Reward signals evaluated
- No racing reward
- Centerline progress reward
- Global plan progress reward
- Centerline cross-track, heading error reward
- Global plan cross-track, heading error reward
- Steering punishment reward

## Installation
Tested on: Ubuntu 20.04.6, Python 3.8.10, pip 23.1.2.

```
python -m venv .venv
source .venv/bin/activate
python -m pip install pyyaml==6.0
python -m pip install -e .
```

## Usage
```
python TestingScripts/TrainVehicles.py
```
![Results](https://github.com/ICAR-2021/RewardSignalDesign/blob/645522f150d9ac1957336cf245b0135db8803f2b/Vehicles/ModEmp_porto_final/training_rewards.png)

## Docker

Prerequisites: [Docker](https://docs.docker.com/engine/install/ubuntu/), [OSRF Rocker](https://github.com/osrf/rocker)

Build the image with:
```
docker build -t reward_signal_design .
```

Run a container with:
```
rocker --x11 --name reward_signal_design reward_signal_design
```

## Citing
If you have found our work helpful, please cite as:
```latex
@INPROCEEDINGS{9659438,
  author={Evans, Benjamin and Engelbrecht, Herman A. and Jordaan, Hendrik W.},
  booktitle={2021 20th International Conference on Advanced Robotics (ICAR)}, 
  title={Reward Signal Design for Autonomous Racing}, 
  year={2021},
  pages={455-460},
  doi={10.1109/ICAR53236.2021.9659438}
}
```

