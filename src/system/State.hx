package system;

import lime.ui.KeyCode;
import lime.ui.KeyModifier;

/**
 * The state.
 */
@:publicFields
class State {
	/**
	 * The current state.
	 */
	static var current:State;

	/**
	 * Whenever you want to use the gc or not.
	 * If the value is true, the old state will be freed up from memory immediately, and other stuff that has no referneces left on it will.
	 */
	static var useGC:Bool = false;

	var sprites:Array<Sprite>;

	/**
	 * Constructs a state.
	 */
	function new() {
		sprites = [];
	}

	/**
	 * Updates the state.
	 * @param deltaTime 
	 */
	function updateState(deltaTime:Int) {
		Sprite.buffer.update();
	}

	/**
	 * Override this to add your code to your own state.
	 * @param keyCode 
	 * @param modifier 
	 */
	function onKeyDown(keyCode:KeyCode, modifier:KeyModifier) {}

	/**
	 * Override this to add your code to your own state.
	 * @param keyCode 
	 * @param modifier 
	 */
	function onKeyUp(keyCode:KeyCode, modifier:KeyModifier) {}
}