package system.internal;

import sys.io.File;

/**
 * The texture pool.
 */
@:publicFields
class TexturePool {
    static var pool:Map<String, Texture> = [];

    static function createTexture(name:String, spr:Sprite = null, path:String = "") {
        if (pool.exists(name)) {
            return;
        }

        if (spr == null || spr.program == null)
        {
            return;
        }

        var textureBytes = File.getBytes(path);
        var textureData = TextureData.fromFormatPNG(textureBytes);
        var texture = new Texture(textureData.width, textureData.height, 1, {format: textureData.format});
        texture.setData(textureData);
        spr.program.setTexture(texture, name);
        pool.set(name, texture);
    }
}