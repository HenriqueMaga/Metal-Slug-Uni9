extends Area2D

var direcao = 1
var velocidade = 600
var mov = Vector2(0,0)

#func ready():

func setar_direcao(novaDirecao):
	direcao = novaDirecao
	if novaDirecao == -1:
		$Sprite.flip_h = true

func _process(delta):
	mov.x = velocidade * delta * direcao
	translate(mov)

func colisao(area):
	if area.name == "Inimigo" ||  area.name == "Alien" :
		area.morrer()
		$CollisionShape2D.set_deferred("disabled",true)
		$Sprite.visible = false
	elif  area.name == "Boss":
		$CollisionShape2D.set_deferred("disabled",true)
		$Sprite.visible = false


func apagar_tiro():
	queue_free()
