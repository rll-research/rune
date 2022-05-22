# Reward Uncertainty for Exploration in Preference-based Reinforcement Learning (RUNE)

Code implementation for [Reward Uncertainty for Exploration in Preference-based Reinforcement Learning](https://openreview.net/forum?id=OWZVD-l-ZrC) and scripts to reproduce experiments. This codebase is largely originated and modified from [B-Pref](https://github.com/rll-research/BPref).


## Install

```
conda env create -f conda_env.yml
pip install -e .[docs,tests,extra]
cd custom_dmcontrol
pip install -e .
cd custom_dmc2gym
pip install -e .
pip install git+https://github.com/rlworkgroup/metaworld.git@master#egg=metaworld
pip install pybullet
```


## Instructions

Implementation of RUNE algorithm is in `train_PEBBLE_explore.py` (based on PEBBLE) and `train_PrefPPO_explore.py` (based on PrefPPO). Default hyperparameters used in paper is included in config files (`config/`) and training scripts (`scripts/`).

Example scripts for running experiments in Table 1 can be reproduced with the following:

PEBBLE + RUNE:

```
./scripts/[env_name]/[max_budget]/run_PEBBLE_rune.sh
./scripts/[env_name]/[max_budget]/run_PEBBLE.sh
```

PrefPPO + RUNE (Button Press):

```
./scripts/[env_name]/[max_budget]/run_PrefPPO_rune.sh
./scripts/[env_name]/[max_budget]/run_PrefPPO.sh
```
