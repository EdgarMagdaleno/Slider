package ;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.Scene;
import com.haxepunk.HXP;
import flash.geom.Point;

class Slider extends Entity {
	private var images:Array<Image>;
	private var scale:Float;
	private var index:Int;
	private var entities:Array<Entity>;
	private var origin:Point;

	public function new(x:Float, y:Float, array:Array<Image>, scale:Float) {
		super(x, y);
		origin = new Point(x, y);

		this.images = array;
		if ( scale == null ) this.scale = 1;
		else this.scale = scale;

		index = 0;

		var band = new Band(array);
		setUp();
	}

	public function setUp() {
		for ( i in 0 ... images.length ) {
			images[i].centerOrigin();
			images[i].scale = scale;
		}

	}

	public function forward() {

	}

	public function backward() {

	}
}