package system.internal;

import lime.ui.Window;

/**
 * The screen.
 */
@:publicFields
class Screen {
	/**
	 * The initial state.
	 */
	inline private static var initState:Class<State> = StartScreen;

	/**
	 * The view of the screen.
	 */
	static var view:PeoteView;

	/**
	 * The screen's main camera.
	 */
	static var camera:Camera;

	/**
	 * Initialize the screen.
	 */
	static function init(window:Window) {
		view = new PeoteView(window);
		camera = new Camera(0, 0, window.width, window.height, 0x00000000);

		camera.addToView(view);

		switchState(initState);
	}

	/**
	 * Switch the state.
	 * @param name
	 */
	static function switchState(name:Dynamic) {
		// todo, add a 'dispose' function to State where you can clear the buffers and remove programs from the Display
		// or you can have Display on the State and then remove that from peote-view during 'dispose'

		State.current = null;

		/**
		 * Free up memory from the old buffer.
		 */
		if (State.useGC)
		{
			GC.run();
		}

		State.current = (name is Class) ? Type.createInstance(name, []) : name;
		
	}
}

// Old comment
// Currently rewriting my character and stage system by making a FieldGroup class and working on haxe.Int128.