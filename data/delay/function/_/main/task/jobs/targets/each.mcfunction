#> delay:_/task/jobs/targets/each
#--------------------
# ../each
#--------------------

data modify storage delay:_ t.task.this_target set from storage delay:_ t.task.this_job.targets[0]

execute summon snowball run function delay:_/main/task/jobs/targets/proxy

data remove storage delay:_ t.task.this_job.targets[0]
execute if data storage delay:_ t.task.this_job.targets[0] run function delay:_/main/task/jobs/targets/each