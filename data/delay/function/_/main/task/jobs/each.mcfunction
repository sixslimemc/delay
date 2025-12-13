#> delay:_/task/jobs/each
#--------------------
# ../trigger
#--------------------

data modify storage delay:_ t.task.this_job set from storage delay:_ t.task.jobs[-1]

execute if data storage delay:_ t.task.this_job.targets[0] run function delay:_/main/task/jobs/targets/each

data remove storage delay:_ t.task.jobs[-1]
execute if data storage delay:_ t.task.jobs[0] run function delay:_/main/task/jobs/each