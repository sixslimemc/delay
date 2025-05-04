#> later:_/task/jobs/targets/execute
#--------------------
# ./proxy AS [target]
#--------------------

data remove storage later:api task

data modify storage later:api task.target set from storage later:_ var.task.this_target.uuid
data modify storage later:api task.data set from storage later:_ var.task.this_job.data
data modify storage later:api task.task_id set from storage later:_ var.task.this_job.task_id

scoreboard players set *g.task.target_exists _later 1
$$(command)