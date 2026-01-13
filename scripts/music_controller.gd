extends Node

func _ready() -> void:
	
	while true:
		for current_song: AudioStreamPlayer in get_children():
			current_song.play()
			await current_song.finished
