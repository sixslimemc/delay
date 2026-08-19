#> delay:_/task/jobs/targets/proxy
#--------------------
# ./each AS [proxy snowball]
#--------------------

data modify entity @s Owner set from storage delay:_ t.task.this_target.uuid

execute on origin at @s run function delay:_/main/task/jobs/targets/execute with storage delay:_ t.task.this_job

execute if score *task.target_exists _delay matches 0 run function delay:_/main/task/jobs/targets/failsafe with storage delay:_ t.task.this_job

kill @s