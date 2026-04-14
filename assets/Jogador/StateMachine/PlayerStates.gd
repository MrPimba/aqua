# Classe base que guarda nomes importantes
class_name PlayerState extends State

# Nomes estados
const IDLE: String = "Idle"
const WALKING: String = "Walking"
var first_hability: String
var second_hability: String
var third_hability: String

# Controles
const UP: String = "move_up"
const DOWN: String = "move_down"
const RIGHT: String = "move_right"
const LEFT: String = "move_left"
const FIRST_HABILITY_INPUT: String = "habilidade1"

# Player
var player: Player

func _ready() -> void:
	await owner.ready
	player = owner as Player
	
	first_hability = player.first_hability.state_name
	
	assert(player != null,
	 "O PlayerState precisaestar ligado a um Player") 
