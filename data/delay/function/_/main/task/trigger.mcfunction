#> delay:_/main/task/trigger
#--------------------
# @scheduled : _/impl/uuids/delay/main
#--------------------

execute store result storage delay:_ t.task.current_time int 1 run time query gametime

# {..jobs}
function delay:_/main/task/get_jobs with storage delay:_ t.task

execute if data storage delay:_ t.task.jobs[0] run function delay:_/main/task/jobs/each

data remove storage delay:_ t.task