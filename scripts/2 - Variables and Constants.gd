extends Node # extending Node class to ignore syntax errors
#
#### Variables
# To write a variable, type the reserved keyword "var" followed by an unique name and optionally it's value
#
# var uniqueName = (Literal Value / Data Object)
#
var playerHp = 100
var secondVar = "Hello Godot!"
var uninitializedVar
#
#
# You can type a variable by explicitly adding a colon followed by the data type
#
var playerHealth: int  = 100
var playerName: String = "Godot"
#
#
#
# It's possible to cast a variable to another type using the "as" keyword
#
# Casting a number to a String
var string: String = 10 as String
#
#
var timer: float = 5 as float
#
#
# You can also infer the data type by the value being assigned to that variable
#
var aNumber := 4
var aBoolean:= true
var aString := 'Fried'
var aFloat := 1.4
#
#
#
# It's possible to assign an object that is the subtype of the cast type
#
var my_node2D: Node2D = $Sprite as Node2D
# Since Sprite is a subclass of Node2D, this line works
#
#
#
#
#### Constants
#
# Constants are declared with the keyword "const" folowed by a unique name, the assignment operator and a value
#
const WILL_NEVER_CHANGE = 10
#
#
const CONSTANT_VALUE: int = 100
#
# Constants are read only, so modifications are not permitted after declaration and assignment
#
#
#
