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

## Citing
If you have found our work helpful, please cite as:
```latex
@article{evans2021navigation,
  title={From Navigation to Racing: Reward Signal Design for Autonomous Racing},
  author={Evans, Benjamin and Engelbrecht, Herman A and Jordaan, Hendrik W},
  journal={arXiv preprint arXiv:2103.10098},
  year={2021}
}
```

