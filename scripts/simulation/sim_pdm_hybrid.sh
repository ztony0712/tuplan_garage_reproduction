
SPLIT=val14_split
CHALLENGE=closed_loop_reactive_agents # open_loop_boxes, closed_loop_nonreactive_agents, closed_loop_reactive_agents
CHECKPOINT=/home/nuplan/tuplan_checkpoints/pdm_offset_checkpoint.ckpt
DATASETCHOOSE=nuplan_mini # nuplan or nuplan_mini

python $NUPLAN_DEVKIT_ROOT/nuplan/planning/script/run_simulation.py \
worker=single_machine_thread_pool \
+simulation=$CHALLENGE \
planner=pdm_hybrid_planner \
planner.pdm_hybrid_planner.checkpoint_path=$CHECKPOINT \
scenario_filter=$SPLIT \
scenario_builder=$DATASETCHOOSE \
hydra.searchpath="[pkg://tuplan_garage.planning.script.config.common, pkg://tuplan_garage.planning.script.config.simulation, pkg://nuplan.planning.script.config.common, pkg://nuplan.planning.script.experiments]"
