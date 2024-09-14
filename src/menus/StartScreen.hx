package menus;

/**
 * The start screen.
 * This is a test state.
 */
@:publicFields
class StartScreen extends State {
	var hi:Sprite;

	function new() {
		super();

		hi = new Sprite(30, 30);
		hi.camera = Screen.camera;

		trace("This is a test");
	}
}