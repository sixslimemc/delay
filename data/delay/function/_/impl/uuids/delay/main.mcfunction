# IMPL > delay:uuids/delay
# main

# valid ticks check:
execute store result score *x _delay run data get storage delay:in delay.ticks
execute unless score *x _delay matches 1.. run return -1

# append task:
data modify storage delay:_ x.task set value {}

# schedule trigger:
$execute store result storage delay:_ x.task.time int 1 run schedule function delay:_/main/task/trigger $(ticks)t append

execute store result storage delay:out delay.task_id int 1 run function delay:_/main/gen_task_id

data modify storage delay:_ x.task.task_id set from storage delay:out delay.task_id
data modify storage delay:_ x.task.command set from storage delay:in delay.command
data modify storage delay:_ x.task.data set from storage delay:in delay.data
data modify storage delay:_ x.task.failsafe set from storage delay:in delay.failsafe
data modify storage delay:_ x.task.targets set from storage delay:in delay.uuids
data modify storage delay:data tasks append from storage delay:_ x.task

return run data get storage delay:data tasks[-1].time