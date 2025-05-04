#> later : delay
#--------------------
# -> command: $command
# -> ticks: int
# ~> data? any
# ~> failsafe? $command
#--------------------
# <- result: TaskID
#--------------------
# TODO: description
# this is the "self" delay.
#--------------------
# 1: success.
# 0: invalid value for <ticks>.
#--------------------

data merge storage later:in {delay:{uuids:[{}]}}
data modify storage later:in delay.uuids[0].uuid set from entity @s UUID
return run function later:uuids/delay