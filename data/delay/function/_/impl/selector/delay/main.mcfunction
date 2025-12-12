# IMPL > delay:selector/delay
# main

# just a wrapper for uuid/delay:
data merge storage delay:in {delay:{uuids:[]}}
$execute as $(selector) run function delay:_/impl/selector/delay/append_self
return run function delay:uuids/delay