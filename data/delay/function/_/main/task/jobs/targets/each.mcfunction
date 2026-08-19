#> delay:_/task/jobs/targets/each
#--------------------
# ../each
#--------------------

data modify storage delay:_ t.task.this_target set from storage delay:_ t.task.this_job.targets[0]

data remove storage delay:api this
data modify storage delay:api this.target set from storage delay:_ t.task.this_target.uuid
data modify storage delay:api this.data set from storage delay:_ t.task.this_job.data
data modify storage delay:api this.attachments set from storage delay:_ t.task.this_job.attachments
data modify storage delay:api this.task_id set from storage delay:_ t.task.this_job.task_id

scoreboard players set *task.target_exists _delay 0
execute summon snowball run function delay:_/main/task/jobs/targets/proxy

data remove storage delay:_ t.task.this_job.targets[0]
execute if data storage delay:_ t.task.this_job.targets[0] run function delay:_/main/task/jobs/targets/each