package system;

import lime.ui.Window;

/**
 * The screen.
 */
@:publicFields
class Screen extends Display {
	/**
	 * The initial state.
	 */
	inline private static var initState:Class<State> = StartScreen;

	/**
	 * The view of the screen.
	 */
	static var view:PeoteView;

	/**
	 * The static instance of the screen.
	 */
	static var display:Display;

	/**
	 * The program of the screen.
	 */
	static var program:Program;

	/**
	 * Initialize the screen.
	 */
	static function init(window:Window) {
		program = new Program(State.current);

		view = new PeoteView(window);
		display = new Display(0, 0, window.width, window.height, 0x00000000);

		view.addDisplay(display);

		switchState(initState);
	}

	/**
	 * Updates the screen's display and program.
	 */
	static function updateDisplay() {
		display.addProgram(program);
	}

	/**
	 * Switch the state.
	 * @param name
	 */
	static function switchState(name:Dynamic) {
		if (display.hasProgram(program))
		{
			display.removeProgram(program);
		}

		State.current = null;

		/**
		 * Free up memory from the old buffer.
		 */
		if (State.useGC)
		{
			GC.run();
		}

		State.current = (name is Class) ? Type.createInstance(name, []) : name;
		program = new Program(State.current);
		display.addProgram(program);
	}
}