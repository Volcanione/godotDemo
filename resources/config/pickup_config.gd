extends Resource
class_name PickupConfig 

enum PickupType {
	SPEED,
	RAPID,
	SPIRAL,
}

enum  PlayerFormMode {
	NORMAL,
	ARMED,
}

enum  ShotPattern {
	NORMAL,
	SPIRAL,
}

@export_group("基础信息")
#用于标记道具类型，便于在编辑器和逻辑中区分不同效果。
@export var pickup_type: PickupType = PickupType.SPEED
#显示名称，便于在编辑器和调试信息中识别用途
@export var display_name: String = "移速道具"
#掉落权重，数值越大越容易在随机掉落时被抽中；设未 0 表示不参与掉落
@export_range(0.0,1000.0,0.1,"or_greater") var drop_weight: float = 1.0


@export_group("显示资源")
#道具在场景中显示的静态图标资源
@export var icon_texture: Texture2D


@export_group("buff 效果")
# 道具效果持续时间，单位为秒
@export_range(0.0,120.0,0.1,"or_greater") var duration: float = 5.0
