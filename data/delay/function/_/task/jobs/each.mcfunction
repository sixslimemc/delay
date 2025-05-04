#> delay:_/task/jobs/each
#--------------------
# ../trigger
#--------------------

data modify storage delay:_ var.task.this_job set from storage delay:_ var.task.jobs[-1]

execute if data storage delay:_ var.task.this_job.targets[0] run function delay:_/task/jobs/targets/each

data remove storage delay:_ var.task.jobs[-1]
execute if data storage delay:_ var.task.jobs[0] run function delay:_/task/jobs/each