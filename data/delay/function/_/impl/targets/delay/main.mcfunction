# IMPL > delay:targets/delay
# main

# valid ticks check:
execute store result score *x _delay run data get storage delay:in delay.ticks
execute unless score *x _delay matches 1.. run return -1

execute store result storage delay:out delay.task_id int 1 run function delay:_/main/gen_task_id

# make task:
data modify storage delay:data tasks append value {attachments:{}, command:"return 0", targets:[], task_id:0, time:0}
data modify storage delay:data tasks[-1].task_id set from storage delay:out delay.task_id
data modify storage delay:data tasks[-1].command set from storage delay:in delay.command
data modify storage delay:data tasks[-1].targets set from storage delay:in delay.targets
data modify storage delay:data tasks[-1].attachments set from storage delay:in delay.attachments
data modify storage delay:data tasks[-1].data set from storage delay:in delay.data
data modify storage delay:data tasks[-1].failsafe set from storage delay:in delay.failsafe
execute store result score *x _delay run time query gametime
execute store result score *y _delay run data get storage delay:in delay.ticks
scoreboard players operation *x _delay += *y _delay
execute store result storage delay:data tasks[-1].time int 1 run scoreboard players get *x _delay

# wake schedule handler:
data modify storage delay:_ data.schedules append from storage delay:in delay.ticks
scoreboard players set *schedule_queued _delay 1

return run data get storage delay:data tasks[-1].time