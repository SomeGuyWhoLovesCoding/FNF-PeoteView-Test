package system;

import utils.Loader;
import haxe.io.Bytes;

/**
 * The sprite.
 */
@:publicFields
class Sprite implements Element
{
	/**
	 * The sprite's x position.
	 */
	@posX var x:Float;

	/**
	 * The sprite's y position.
	 */
	@posY var y:Float;

	/**
	 * The sprite's z index.
	 */
	@zIndex var z:Int;

	/**
	 * The sprite's width.
	 */
	@sizeX var w:Int;

	/**
	 * The sprite's height.
	 */
	@sizeY var h:Int;

	/**
	 * The rotation around pivot point of the sprite.
	 */
	@rotation var r:Float;

	/**
	 * The pivot x of the sprite.
	 */
	@pivotX var px:Float;

	/**
	 * The pivot y of the sprite.
	 */
	@pivotY var py:Float;

	/**
	 * The color (in RGBA format) of the sprite.
	 */
	@color var c:Color = 0xffffffff;

	/**
	 * The texture slot.
	 */
	@texSlot var slot:Int;

	/**
	 * The texture x.
	 */
	@texX var tx:Int;

	/**
	 * The texture y.
	 */
	@texY var ty:Int;

	/**
	 * The texture width.
	 */
	@texW var tw:Int;

	/**
	 * The texture height.
	 */
	@texH var th:Int;

	/**
	 * The texture height b?
	 * What the hell is texture height b?
	 */
	@texH("B") var thB:Int;

	/**
	 * The texture x offset.
	 */
	@texPosX var txOffset:Float;

	/**
	 * The texture y offset.
	 */
	@texPosY var tyOffset:Float;

	/**
	 * The texture width offset.
	 */
	@texSizeX var twOffset:Int;

	/**
	 * The texture height offset.
	 */
	@texSizeY var thOffset:Int;

	/**
	 * The texture options.
	 */
	var OPTIONS = { texRepeatX:true, texRepeatY:true, blend:true };

	/**
	 * The sprite's buffer.
	 */
	static var buffer:Buffer<Sprite>;

	/**
	 * The sprite's program.
	 */
	var program:Program;

	/**
	 * The sprite's camera.
	 */
	var camera(default, set):Camera;

	/**
	 * The setter for the sprite's camera.
	 * @param value 
	 * @return Camera
	 */
	inline function set_camera(value:Camera):Camera {
		if (camera.display.hasProgram(program))
		{
			camera.display.removeProgram(program);
		}

		camera = value;
		camera.display.addProgram(program);

		return camera;
	}

	/**
	 * Constructs a sprite.
	 */
	function new(x:Float, y:Float, z:Int = -1) {
		Sprite.buffer = new Buffer<Sprite>(1, 400000000, true);

		this.x = x;
		this.y = y;

		if (z > 0)
		{
			this.z = z;
		}

		program = new Program(Sprite.buffer);
		Sprite.buffer.addElement(this);
	}

	/**
	 * Loads a texture.
	 * @param texture
	 */
	function loadTexture(texture:Texture) {
		// WIP
	}


}
