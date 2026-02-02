extends Node2D

@export var spike_timer := 0.0



func _ready():
		get_node("Spikes").collision_enabled = true
	


func _physics_process(delta: float) -> void:
	
	
	#for i in spike_timer:
	#	print(spike_timer)
	
	if spike_timer >= 2.0:
		$Spikes.collision_enabled = !$Spikes.collision_enabled
		#print($Spikes.collision_enabled)
		spike_timer = 0.0
		get_node("Spikes").update_internals()
	spike_timer += delta
	
