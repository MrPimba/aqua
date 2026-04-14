class_name Stamina extends Node

@export var actual_stamina: float
var max_stamina: int
@export var regen_rate: float

func _ready() -> void:
	max_stamina = actual_stamina

func decresse_over_time(decrese_value: int, delta: float) -> void:
	print("Stamina decaindo..." + str(decrese_value))
	actual_stamina -= decrese_value * delta

func _physics_process(delta: float) -> void:
	print("Stamina é" + str(actual_stamina) + "/" + str(max_stamina))
	if actual_stamina < max_stamina:
		print("Stamina subindo..." + str(regen_rate))
		actual_stamina += regen_rate * delta
