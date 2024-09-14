package system;

/**
 * The camera.
 */
@:publicFields
class Camera {
	/**
	 * The camera's screen.
	 */
	var display:Display;

	/**
	 * The camera's x.
	 * This is a helper variable for better readability.
	 */
	var x(get, set):Int;

	/**
	 * The getter for the x.
	 */
	inline function get_x():Int {
		return display.x;
	}

	/**
	 * The setter for the x.
	 */
	inline function set_x(value:Int):Int {
		return display.x = value;
	}

	/**
	 * The camera's y.
	 * This is a helper variable for better readability.
	 */
	var y(get, set):Int;

	/**
	 * The getter for the y.
	 */
	inline function get_y():Int {
		return display.y;
	}

	/**
	 * The setter for the camera's y.
	 */
	inline function set_y(value:Int):Int {
		return display.y = value;
	}

	/**
	 * The camera's width.
	 * This is a helper variable for better readability.
	 */
	var width(get, set):Int;

	/**
	 * The getter for the width.
	 */
	inline function get_width():Int {
		return display.width;
	}

	/**
	 * The setter for the width.
	 */
	inline function set_width(value:Int):Int {
		return display.width = value;
	}

	/**
	 * The camera's height.
	 * This is a helper variable for better readability.
	 */
	var height(get, set):Int;

	/**
	 * The getter for the height.
	 */
	inline function get_height():Int {
		return display.height;
	}

	/**
	 * The setter for the height.
	 */
	inline function set_height(value:Int):Int {
		return display.height = value;
	}

	/**
	 * The camera's zoom.
	 * This is a helper variable for better readability.
	 */
	var zoom(get, set):Float;

	/**
	 * The getter for the zoom.
	 */
	inline function get_zoom():Float {
		return display.zoom;
	}

	/**
	 * The setter for the zoom.
	 */
	inline function set_zoom(value:Float):Float {
		return display.zoom = value;
	}

	/**
	 * The camera's background color.
	 * This is a helper variable for better readability.
	 */
	var bgColor(get, set):Color;

	/**
	 * The getter for the background color.
	 */
	inline function get_bgColor():Color {
		return display.color;
	}

	/**
	 * The setter for the background color.
	 */
	inline function set_bgColor(value:Color):Color {
		return display.color = value;
	}

	/**
	 * Constructs a camera.
	 */
	function new(x:Int, y:Int, width:Int, height:Int, color:Color = 0x00000000, initialZoom:Float = 1) {
		display = new Display(x, y, width, height, color);
		zoom = initialZoom;
	}

	/**
	 * Helper function that gets the selected view to add the camera's display.
	 * @param view 
	 */
	function addToView(view:PeoteView) {
		view.addDisplay(display);
	}
}