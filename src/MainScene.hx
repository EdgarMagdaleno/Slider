import com.haxepunk.Scene;
import com.haxepunk.graphics.Image;
class MainScene extends Scene
{	
	private var images:Array<Image>;
	private var slider:Slider;

	public override function begin()
	{	
		populateArray();
		add(new Slider(320, 240, images, .50));
	}

	public function populateArray() {
		images = new Array<Image>();
		for ( i in 0 ... 8 )
			images.push(new Image("graphics/" + i + ".png"));
	}
}