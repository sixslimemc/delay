#> delay:_/schedule_handler/ticking
#--------------------
# _/preloads/execute
#--------------------
schedule function delay:_/main/schedule_handler/ticking 1t append
execute unless score *schedule_queued _delay matches 1 run return 0
scoreboard players reset *schedule_queued _delay

execute if data storage delay:_ data.schedules[0] run function delay:_/main/schedule_handler/schedules/each

scoreboard players reset *schedule.ticks _delay
scoreboard players reset *schedule.immediate_executed _delay
data remove storage delay:_ data.schedules