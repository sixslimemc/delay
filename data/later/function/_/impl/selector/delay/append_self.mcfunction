#> later:_/impl/selector/delay/append_self
#--------------------
# ./main
#--------------------

data modify storage later:in delay.uuids append value {}
data modify storage later:in delay.uuids[-1].uuid set from entity @s UUID