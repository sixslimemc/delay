#> delay:_/task/trigger
#--------------------
# @scheduled : ./impl/uuids/delay/main
#--------------------

execute store result storage delay:_ var.task.current_time int 1 run time query gametime

# {..jobs}
function delay:_/task/get_jobs with storage delay:_ var.task

execute if data storage delay:_ var.task.jobs[0] run function delay:_/task/jobs/each

data remove storage delay:_ var.task