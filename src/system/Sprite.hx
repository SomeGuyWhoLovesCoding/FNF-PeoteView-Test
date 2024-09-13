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
	@posX var x:Int = 0;

	/**
	 * The sprite's y position.
	 */
	@posY var y:Int = 0;

	/**
	 * The sprite's z position.
	 */
	@zIndex var z:Int = 0;

	/**
	 * The sprite's width.
	 */
	@sizeX var w:Int = 100;

	/**
	 * The sprite's height.
	 */
	@sizeY var h:Int = 100;

	/**
	 * The rotation around pivot point of the sprite.
	 */
	@rotation var r:Float;

	/**
	 * The pivot x of the sprite.
	 */
	@pivotX var px:Int = 0;

	/**
	 * The pivot y of the sprite.
	 */
	@pivotY var py:Int = 0;

	/**
	 * The color (in RGBA format) of the sprite.
	 */
	@color var c:Color = 0xff0000ff;

	/**
	 * The alpha of the sprite.
	 */
	var a(default, set):Float = 1;

	/**
	 * The setter for the sprite's alpha.
	 * @param value 
	 * @return Float
	 */
	inline function set_a(value:Float):Float {
		a = value;
		return value;
	}

	/**
	 * The sprite's texture slot.
	 */
	@texSlot public var slot:Int = 0;

	/**
	 * Constructs a sprite.
	 */
	function new() {}

	/**
	 * Loads a texture.
	 * @param texture 
	 */
	function loadTexture(texture:Texture) {
		// WIP
	}

	/**
	 * Loads a texture from file.
	 * @param path 
	 */
	function loadTextureFromFile(path:String):Sprite {
		Loader.bytes(path, true, function (bytes:Bytes)
		{
			var textureData = TextureData.fromFormatPNG(bytes);

			switch(textureData.format) {
				case LUMINANCE: trace("LUMINANCE");
				case LUMINANCE_ALPHA: trace("LUMINANCE_ALPHA");
				case RGB: trace("RGB");
				case RGBA: trace("RGBA");
				case FLOAT_RGBA: trace("FLOAT_RGBA");
				case FLOAT_RGB: trace("FLOAT_RGB");
				case FLOAT_RG: trace("FLOAT_RG");
				case FLOAT_R: trace("FLOAT_R");
				default:
			}

			var texture = new Texture(textureData.width, textureData.height, 1, {format: textureData.format});
			texture.setData(textureData);

			Screen.program.setTexture(texture, "custom");
			Screen.program.blendEnabled = true;
			Screen.updateDisplay();
		});

		return this;
	}
}
