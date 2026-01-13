extends Node2D

const WASTE_BUCKET = preload("uid://cmbcsqgadpafu")

@onready var waste_bucket_container: Node2D = $Level/Objects/WasteBucketContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_spawn_waste_buckets()

func _spawn_waste_buckets():
	
	#SPAWNS WASTE_BASKETS
	for i in randi_range(floor(globals.waste_bucket_max_amount / 2), globals.waste_bucket_max_amount):
		#CREATES WASTE_BASKET
		var clone_waste_bucket: Node2D = WASTE_BUCKET.instantiate()
		
		waste_bucket_container.add_child(clone_waste_bucket)
		clone_waste_bucket.position = Vector2(randi_range(0, 640), randi_range(0, 480))
