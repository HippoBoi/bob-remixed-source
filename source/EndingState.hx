package;
import flixel.*;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
//I TOOK THIS FROM MATT 3.0 MOD but it seems this was used on the sky mod
/**
 * ...
 * @author bbpanzu
 */
class EndingState extends FlxState
{

	var _goodEnding:Bool = false;
	
	public function new(goodEnding:Bool = true) 
	{
		super();
		_goodEnding = goodEnding;
		
	}
	
	override public function create():Void 
	{
		trace(PlayState.SONG.song.toLowerCase());
		super.create();	
		var end:FlxSprite = new FlxSprite(0, 0);
		if (PlayState.storyWeek == 0)
			endIt();
		else
			FlxG.camera.fade(FlxColor.BLACK, 0.8, true);
			if (PlayState.SONG.song.toLowerCase() == 'runlmao')
			    {
			        end.loadGraphic(Paths.image("endbob"));
			        add(end);
			    }
			
			if (PlayState.SONG.song.toLowerCase() == 'dreams')
			    {
					end.loadGraphic(Paths.image("goodend"));
			        add(end);
				}
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		
		if (FlxG.keys.pressed.ENTER){
			endIt();
		}
		
	}
	
	
	public function endIt(e:FlxTimer=null){
		trace("ENDING");
		FlxG.switchState(new StoryMenuState());
	}
	
}