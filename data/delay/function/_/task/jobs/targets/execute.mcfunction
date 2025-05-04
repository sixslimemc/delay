#> delay:_/task/jobs/targets/execute
#--------------------
# ./proxy AS [target]
#--------------------

data remove storage delay:api task

data modify storage delay:api task.target set from storage delay:_ var.task.this_target.uuid
data modify storage delay:api task.data set from storage delay:_ var.task.this_job.data
data modify storage delay:api task.task_id set from storage delay:_ var.task.this_job.task_id

scoreboard players set *g.task.target_exists _delay 1
$$(command)