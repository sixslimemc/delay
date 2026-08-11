# IMPL > delay:targets/delay
# main

# valid ticks check:
execute store result score *x _delay run data get storage delay:in delay.ticks
execute unless score *x _delay matches 1.. run return -1

execute store result storage delay:out delay.task_id int 1 run function delay:_/main/gen_task_id

# make task:
data modify storage delay:_ x.task set value {attachments:{}}
data modify storage delay:_ x.task.task_id set from storage delay:out delay.task_id
data modify storage delay:_ x.task.command set from storage delay:in delay.command
data modify storage delay:_ x.task.data set from storage delay:in delay.data
data modify storage delay:_ x.task.failsafe set from storage delay:in delay.failsafe
data modify storage delay:_ x.task.targets set from storage delay:in delay.targets
data modify storage delay:_ x.task.attachments set from storage delay:in delay.attachments
execute store result score *x _delay run time query gametime
execute store result score *y _delay run data get storage delay:in delay.ticks
scoreboard players operation *x _delay += *y _delay
execute store result storage delay:_ x.task.time int 1 run scoreboard players get *x _delay
data modify storage delay:data tasks append from storage delay:_ x.task

# wake schedule handler:
data modify storage delay:_ data.schedules append from storage delay:in delay.ticks
execute store result storage delay:_ data.schedules[-1] int 1 run scoreboard players get *y _delay
scoreboard players set *schedule_queued _delay 1

return run data get storage delay:data tasks[-1].time