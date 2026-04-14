class_name Player extends CharacterBody2D

#Composição
@onready var vida: Vida = $Vida
@onready var velocidade: Velocidade = $Velocidade
@onready var stamina: Stamina = $Stamina
@onready var almas: Almas = $Almas
@onready var movement_state_machine: StateMachine = $StateMachine
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@export var first_hability: Hability

func _ready() -> void:
	movement_state_machine.add_child(first_hability)
