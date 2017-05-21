package
{
	import com.gt.tanks.Game;
	import com.gt.tanks.Player;
	import com.gt.tanks.constants.WeaponType;
	import com.gt.tanks.shop.ShopItem;
	import com.gt.tanks.utils.GameError;
	import com.gt.tanks.weapons.ShotMedium;
	import com.gt.tanks.weapons.Weapon;
	
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.filesystem.File;
	import flash.filesystem.FileStream;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;
	
	public class TestMain extends Sprite
	{
		public function TestMain()
		{
			var file:File = new File("D:\\_PROJECTS\\_FLEX\\tanks-projects\\tanks-core\\source\\bin\\flash\\core.swf");

			var fileStream:FileStream = new FileStream();
			fileStream.addEventListener(Event.COMPLETE, fileStream_completeHandler);
			fileStream.addEventListener(IOErrorEvent.IO_ERROR, fileStream_ioReadErrorHandler);
			//fileStream.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			fileStream.openAsync(file, "read");
		}
		private function fileStream_ioReadErrorHandler(e:IOErrorEvent):void
		{
			trace(e.text);
		}

		private function fileStream_completeHandler(e:Event):void
		{
			var fileStream:FileStream = e.currentTarget as FileStream;
			var bytes:ByteArray = new ByteArray();
			fileStream.readBytes(bytes, 0, fileStream.bytesAvailable);
			fileStream.close();

			var loader:Loader = new Loader();
			var loaderContext:LoaderContext = new LoaderContext(false, ApplicationDomain.currentDomain);
			loaderContext.allowLoadBytesCodeExecution = true;
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loaderInfo_completeHandler);
			loader.loadBytes(bytes, loaderContext);
			//loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, loaderErrored);
		}
		
		private function loaderInfo_completeHandler(e:Event):void 
		{
			e.currentTarget.removeEventListener(Event.COMPLETE, loaderInfo_completeHandler);
			var gameClass:Class = e.currentTarget.applicationDomain.getDefinition("com.gt.tanks.Game")  as  Class;
			
			var g:Game = new gameClass();
			/*for (var i:int = 0; i < g.shop.items.length; i++) 
			{
				var item:ShopItem = g.shop.items.get(i);
				trace(i, "requirements");
				for (var r:int = 0; r < item.requirements.length; r++) 
					trace(r, item.requirements.get(r));
				trace(i, "outcomes");
				for (var o:int = 0; o < item.outcomes.length; o++) 
					trace(o, item.outcomes.get(o));
			}
			//trace(g.weapons.get(WeaponType.W00_SHOT_MEDIUM).damage);
			for (i = 0; i < g.weapons.length; i++) 
				trace(i, g.weapons.get(i).type, g.weapons.get(i).damage);*/
			try
			{
				g.get_shop().purchase(0);
			} 
			catch(error:GameError) 
			{
				trace(error.message);
			}   
			
		}
	}
}