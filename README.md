# LeaderboardV2_Roach  
2024.10.29实现Roach算法往leaderboardV2上面的迁移,训练结果这是算法调参以及场景兼容的事,请自行调整或与我沟通。
## Description
Migrate Roach to LeaderboardV2  

## Installation  
cd leaderboard  
conda create -n Roach_V2 python==3.7  
pip install -r requirements  

or:   

cd leaderboard  
conda env create -f environment.yml  

## Run the LeaderboardV2_Roach
cd leaderboard  
vim run_lv2_roach.sh  
set the LEADERBOARD_ROOT path and Carla_root path  
bash run_lv2_roach.sh  

