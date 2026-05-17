class_name StatsBase
extends Resource

signal death()

@export var max_hp := 10.0
@export var hp := max_hp
@export var max_mp := 10.0
@export var mp := max_mp
@export var name_label := "DummyName"

func damage_take(amount: float):
	hp -= amount
	print(name_label, " took ", amount,"  damage!")
	if hp < 0:
		death.emit()
		print(name_label, " has died!")

func damage_heal(amount :float):
	hp += amount
	if hp > max_hp:
		hp = max_hp
	print("healed %0.1f", amount)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
