import com.haxepunk.Scene;
import com.haxepunk.graphics.Image;
import com.haxepunk.graphics.Image.createRect;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

class MainScene extends Scene
{	
	private var images:Array<Image>;
	private var slider:Slider;

	public override function begin()
	{	
		Input.define("forward", [Key.RIGHT]);
		Input.define("backward", [Key.LEFT]);
		setGuides();
		populateArray();
		slider = new Slider(320, 240, images, .50);
		add(slider);
	}

	public function setGuides() {
		var tmp:Image;
		tmp = createRect(640, 1, 0xffffff);
		addGraphic(tmp, 0, 0, 240);

		tmp = createRect(1, 480, 0xffffff);
		addGraphic(tmp, 0, 320, 0);
	}

	public function populateArray() {
		images = new Array<Image>();
		for ( i in 0 ... 8 )
			images.push(new Image("graphics/" + i + ".png"));
	}

	public override function update() {
		super.update();
		if(Input.pressed("forward")) slider.forward();
		if(Input.pressed("backward")) slider.backward();
	}
}