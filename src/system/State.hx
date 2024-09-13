package system;

import peote.view.PeoteView;
import peote.view.Buffer;
import peote.view.Display;
import peote.view.Program;
import peote.view.Color;

/**
 * The state.
 */
@:publicFields
class State extends Buffer<Sprite> {
    /**
     * The static instance of the state.
     */
    static var current:State = new State();

    /**
     * Whenever you want to use the gc or not.
     * If the value is true, the old state will be freed up from memory immediately, and other stuff that has no referneces left on it will.
     */
    static var useGC:Bool = false;

    /**
     * Constructs a state.
     */
    override function new() {
        super(1, 1, true);
    }

    /**
     * Add an element to the state.
     * @param spr 
     */
    inline function add(spr:Sprite) {
        addElement(spr);
    }

    /**
     * Updates the state.
     * @param deltaTime 
     */
    function updateState(deltaTime:Int) {
        update();
    }

    /**
     * Override this to add your code to your own state.
     * @param keyCode 
     * @param modifier 
     */
    function onKeyDown(keyCode:lime.ui.KeyCode, modifier:lime.ui.KeyModifier) {}

    /**
     * Override this to add your code to your own state.
     * @param keyCode 
     * @param modifier 
     */
    function onKeyUp(keyCode:lime.ui.KeyCode, modifier:lime.ui.KeyModifier) {}
}