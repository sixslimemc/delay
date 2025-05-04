#> later:_/task/jobs/targets/proxy
#--------------------
# ./each AS [proxy snowball]
#--------------------

data modify entity @s Owner set from storage later:_ var.task.this_target.uuid

data remove storage later:api task

data modify storage later:api task.target set from storage later:_ var.task.this_target.uuid
data modify storage later:api task.data set from storage later:_ var.task.this_job.data
data modify storage later:api task.task_id set from storage later:_ var.task.this_job.task_id

execute on origin at @s run function later:_/task/jobs/targets/execute with storage later:_ var.task.this_job

execute unless score *g.task.target_exists _later matches 1 run function later:_/task/jobs/targets/failsafe with storage later:_ var.task.this_job

scoreboard players reset *g.task.target_exists _later

kill @s