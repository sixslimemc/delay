#> delay:_/task/jobs/targets/proxy
#--------------------
# ./each AS [proxy snowball]
#--------------------

data modify entity @s Owner set from storage delay:_ var.task.this_target.uuid

data remove storage delay:api task

data modify storage delay:api task.target set from storage delay:_ var.task.this_target.uuid
data modify storage delay:api task.data set from storage delay:_ var.task.this_job.data
data modify storage delay:api task.task_id set from storage delay:_ var.task.this_job.task_id

execute on origin at @s run function delay:_/task/jobs/targets/execute with storage delay:_ var.task.this_job

execute unless score *g.task.target_exists _delay matches 1 run function delay:_/task/jobs/targets/failsafe with storage delay:_ var.task.this_job

scoreboard players reset *g.task.target_exists _delay

kill @s