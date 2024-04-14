
SPLIT=val14_split
CHALLENGE=open_loop_boxes # open_loop_boxes, closed_loop_nonreactive_agents, closed_loop_reactive_agents
CHECKPOINT=/home/nuplan/tuplan_checkpoints/open_loop.ckpt

python $NUPLAN_DEVKIT_ROOT/nuplan/planning/script/run_simulation.py \
+simulation=$CHALLENGE \
planner=pdm_open_planner \
planner.pdm_open_planner.checkpoint_path=$CHECKPOINT \
scenario_filter=$SPLIT \
scenario_builder=nuplan_mini \
hydra.searchpath="[pkg://tuplan_garage.planning.script.config.common, pkg://tuplan_garage.planning.script.config.simulation, pkg://nuplan.planning.script.config.common, pkg://nuplan.planning.script.experiments]"
