extends Node2D


func _ready():
	pass


func _process(delta):
	translate(Vector2(0,2))


func dano_no_marco(body):
	if body.name == "KinematicBody2D":
		ScriptGlobal.qtd_vidas += -5
		print("Sofri dano ",ScriptGlobal.qtd_vidas)