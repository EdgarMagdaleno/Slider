class Band {
	private var array;
	private var index;
	public function new(array:Array<Dynamic>) {
		this.array = array;
		this.index = 0;
	}

	public function setIndex(n:Int) {
		this.index = n;
	}

	public function nextIndex(?steps:Int) {
		if ( steps == null ) steps = 1; 
	}

	public function previousIndex(?steps:Int) {
		if ( steps == null ) steps = 1; 
	}

	public function next(?steps:Int) {
		if ( steps == null ) steps = 1;
		if ( index + steps > array.length - 1) return array[index + steps - array.length];
		else return array[index + steps];
	}

	public function previous(?steps:Int) {
		if ( steps == null ) n = 1;
		if ( index - steps < 0 ) return array[array.length - steps];
		else return array[index - steps];
	}

	public function push(n:Dynamic) {
		this.array.push(n);
	}
}