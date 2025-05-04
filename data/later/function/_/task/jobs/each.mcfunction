#> later:_/task/jobs/each
#--------------------
# ../trigger
#--------------------

data modify storage later:_ var.task.this_job set from storage later:_ var.task.jobs[-1]

execute if data storage later:_ var.task.this_job.targets[0] run function later:_/task/jobs/targets/each

data remove storage later:_ var.task.jobs[-1]
execute if data storage later:_ var.task.jobs[0] run function later:_/task/jobs/each