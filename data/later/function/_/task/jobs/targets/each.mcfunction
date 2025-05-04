#> later:_/task/jobs/targets/each
#--------------------
# ../each
#--------------------

data modify storage later:_ var.task.this_target set from storage later:_ var.task.this_job.targets[0]

execute summon snowball run function later:_/task/jobs/targets/proxy

data remove storage later:_ var.task.this_job.targets[0]
execute if data storage later:_ var.task.this_job.targets[0] run function later:_/task/jobs/targets/each