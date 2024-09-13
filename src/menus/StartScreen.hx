package menus;

/**
 * The start screen.
 */
class StartScreen extends State {
    var bg:Sprite;
    var logo:Sprite;

    override function new() {
        super();

        bg = new Sprite();
        bg.w = Screen.display.width;
        bg.h = Screen.display.height;
        bg.c = 0x000044FF;
        add(bg);

        logo = new Sprite().loadTextureFromFile("assets/test0.png");
        logo.x = 300;
        logo.y = 200;
        add(logo);
    }

    override function updateState(deltaTime:Int) {
        logo.r += 3;
        super.updateState(deltaTime);
    }

    override function onKeyDown(keyCode, keyModifier) {
        //trace(keyCode);
    }
}