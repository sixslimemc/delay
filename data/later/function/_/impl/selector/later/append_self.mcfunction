#> later:_/impl/selector/later/append_self
#--------------------
# ./main
#--------------------

data modify storage later:in later.uuids append value {}
data modify storage later:in later.uuids[-1].uuid set from entity @s UUID