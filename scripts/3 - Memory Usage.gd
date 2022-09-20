#
# Godot uses Reference Counting for storing variables and Objects
#
#
var x = 2020
#
# x now points to and Object in memory that contains the type int, value 2020 and reference count of that object (1 in this case).
#
# |name|   ->   |  Object (0x140)  |
# | x  |        | Type    | integer|
#               | Value   |  2020  |
#               | RefCount|   1    |
#
# As long as that Object has a reference count > 0, the Object will continue to exist in memory.
#
var y = x
#
# |name|   ->   |  Object (0x140)  |
# | y  |        | Type    | integer|
#               | Value   |  2020  |
# |name|   ->   | RefCount|   2    |     Notice how the reference count increased
# | y  |
#
#
#
#
y = 0
#
#
# |name|   ->   |  Object (0x140)  |
# | x  |        | Type    | integer|
#               | Value   |  2020  |
#               | RefCount|   1    |
#
# |name|   ->   |  Object (0x141)  |
# | x  |        | Type    | integer|
#               | Value   |    0   |
#               | RefCount|   1    |
#
#
#
#
#
#
# Nodes in Godot are not reference counted in the engine
#
# This means that removing a node from the tree will not free the memory
#
# To better manage nodes, create a pool of objects and re-use the node object
#
# It is also possible to explicitly destroy/free the node from memory by calling "queue_free()" in the "_exit_tre()"
# which is caled when the nmode is removed from the tree
#
#
