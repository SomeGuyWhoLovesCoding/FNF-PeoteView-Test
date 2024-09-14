package menus;

import sys.io.File;

/**
 * The start screen.
 */
class StartScreen extends State {
    var bg:Sprite;
    var logo:Sprite;
    
    override function new() {
        super();

        bg = new Sprite();
        logo = new Sprite();

        // init a texture in the program which the elements in the buffer will render
        TexturePool.createTexture("test0", logo, "assets/test0.png");
    }

    override function updateState(deltaTime:Int) {
        super.updateState(deltaTime);

        logo.r += 3;
    }

    override function onKeyDown(keyCode, keyModifier) {
        //trace(keyCode);
    }
}