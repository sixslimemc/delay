#> delay:_/impl/selector/delay/append_self
#--------------------
# ./main
#--------------------

data modify storage delay:in delay.uuids append value {uuid:[0, 0, 0, 0]}
data modify storage delay:in delay.uuids[-1].uuid set from entity @s UUID