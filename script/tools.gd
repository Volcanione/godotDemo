extends Node
class_name  Tools


#一次性音效统一使用播放逻辑，避免快速触发时无法从头开始
static func play_sfx(audio_player:AudioStreamPlayer) -> void:
	if audio_player == null or audio_player.stream == null:
		return

	audio_player.stop()
	audio_player.play()
