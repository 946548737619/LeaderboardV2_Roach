 #!/bin/bash

PORT=8000
PROCESS=$(netstat -tulnp | grep ":$PORT" | awk '{print $7}' | cut -d'/' -f1)

if [ ! -z "$PROCESS" ]; then
    echo "Killing process $PROCESS using port $PORT"
    kill -9 $PROCESS
else
    echo "Port $PORT is free"
fi
LEADERBOARD_ROOT="Your leaderboard path"
export LEADERBOARD_ROOT=$LEADERBOARD_ROOT
export Carla_root="Your Carla0.9.14 path"
export TEAM_AGENT=$LEADERBOARD_ROOT/leaderboard/autoagents/human_agent.py
export ROUTES=$LEADERBOARD_ROOT/data/routes_training.xml
export ROUTES_SUBSET=0
export REPETITIONS=1000
export DEBUG_CHALLENGE=1
export CHALLENGE_TRACK_CODENAME=SENSORS
export TME_STAMP=$(date +"%Y_%m_%d_%H_%M_%s")
export CHECKPOINT_ENDPOINT="${LEADERBOARD_ROOT}/result_log/results_${TME_STAMP}.json"
export RECORD_PATH=
export RESUME=
export SCENARIO_RUNNER_ROOT=$LEADERBOARD_ROOT/scenario_runner




#!/bin/bash

python3 ${LEADERBOARD_ROOT}/leaderboard/roach_evaluate_v2.py \
--routes=${ROUTES} \
--routes-subset=${ROUTES_SUBSET} \
--repetitions=${REPETITIONS} \
--track=${CHALLENGE_TRACK_CODENAME} \
--checkpoint=${CHECKPOINT_ENDPOINT} \
--debug-checkpoint=${DEBUG_CHECKPOINT_ENDPOINT} \
--agent=${TEAM_AGENT} \
--agent-config=${TEAM_CONFIG} \
--debug=${DEBUG_CHALLENGE} \
--record=${RECORD_PATH} \
--resume=${RESUME}
