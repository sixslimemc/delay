#> delay:_/main/schedule_handler/schedules/each
#--------------------
# ../ticking
#--------------------

execute store result score *schedule.ticks _delay run data get storage delay:_ data.schedules[-1]
scoreboard players remove *schedule.ticks _delay 1

execute if score *schedule.ticks _delay matches ..0 unless score *schedule.immediate_executed _delay matches 1 run function delay:_/main/schedule_handler/schedules/immediate
execute if score *schedule.ticks _delay matches 1.. run execute store result storage delay:_ x.ticks int 1 run scoreboard players get *schedule.ticks _delay
execute if score *schedule.ticks _delay matches 1.. run function delay:_/main/schedule_handler/schedules/scheduled with storage delay:_ x

data remove storage delay:_ data.schedules[-1]
execute if data storage delay:_ data.schedules[0] run function delay:_/main/schedule_handler/schedules/each