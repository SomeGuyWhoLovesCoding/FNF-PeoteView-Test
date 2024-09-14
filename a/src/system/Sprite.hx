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
	@posX @constStart(0) var x:Float;

	/**
	 * The sprite's y position.
	 */
	@posY @constStart(0) var y:Float;

	/**
	 * The sprite's z position.
	 */
	@zIndex @constStart(0) var z:Int;

	/**
	 * The sprite's width.
	 */
	@sizeX @constStart(0) var w:Int;

	/**
	 * The sprite's height.
	 */
	@sizeY @constStart(0) var h:Int;

	/**
	 * The rotation around pivot point of the sprite.
	 */
	@rotation @constStart(0) var r:Float;

	/**
	 * The pivot x of the sprite.
	 */
	@pivotX @constStart(0) var px:Float;

	/**
	 * The pivot y of the sprite.
	 */
	@pivotY @constStart(0) var py:Float;

	/**
	 * The color (in RGBA format) of the sprite.
	 */
	@color @constStart(0xffffffff) var c:Color = 0xff0000ff;

	/**
	 * The texture slot.
	 */
	@texSlot @constStart(0) var slot:Int;

	/**
	 * The texture x.
	 */
	@texX @constStart(0) var tx:Int;

	/**
	 * The texture y.
	 */
	@texY @constStart(0) var ty:Int;

	/**
	 * The texture width.
	 */
	@texW @constStart(0) var tw:Int;

	/**
	 * The texture height.
	 */
	@texH @constStart(0) var th:Int;

	/**
	 * The texture height b?
	 * What the hell is texture height b?
	 */
	@texH("B") @constStart(1) var thB:Int;

	/**
	 * The texture x offset.
	 */
	@texPosX @constStart(0) var txOffset:Float;

	/**
	 * The texture y offset.
	 */
	@texPosY @constStart(0) var tyOffset:Float;

	/**
	 * The texture width offset.
	 */
	@texSizeX @constStart(0) var twOffset:Int;

	/**
	 * The texture height offset.
	 */
	@texSizeY @constStart(0) var thOffset:Int;

	/**
	 * The texture options.
	 */
	var OPTIONS = { texRepeatX:true, texRepeatY:true, blend:true };

	/**
	 * The sprite's buffer.
	 */
	var buffer:Buffer<Sprite> = new Buffer<Sprite>(4);

	/**
	 * The sprite's program.
	 */
	var program:Program;

	/**
	 * Constructs a sprite.
	 */
	function new() {
		program = new Program(buffer);
		buffer.addElement(this);
	}

	/**
	 * Loads a texture.
	 * @param texture
	 */
	function loadTexture(texture:Texture) {
		// WIP
	}


}
