# Classe base que guarda nomes importantes
class_name PlayerState extends State

# Nomes animaçÕes
const IDLE: String = "Idle"
const WALKING: String = "Walking"
const SURFING: String = "Surfing"

# Controles
const UP: String = "move_up"
const DOWN: String = "move_down"
const RIGHT: String = "move_right"
const LEFT: String = "move_left"

# Player
var player: Player

func _ready() -> void:
	await owner.ready
	player = owner as Player
	assert(player != null,
	 "O PlayerState precisaestar ligado a um Player") 
