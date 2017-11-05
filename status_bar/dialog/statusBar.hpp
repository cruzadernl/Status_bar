#define ST_RIGHT 0x01

class osefStatusBar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['osefStatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['osefStatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['osefStatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	objects[] = {};
	
	      class controlsBackground
      {
              class statusBarImage
              {
                      idc = 55557;
                      type = 0;
                      style = 48;
                      x = safezoneX + safezoneW - 0.913;
                      y = safezoneY + safezoneH - 0.077; //0.068
                      w = 1.35;
                      h = 0.08; //0.06
                      colorText[] = {1, 1, 1, 1};
                      colorBackground[]={0,0,0,0};
                      sizeEx = 0.4;
                      font = "PuristaSemibold";
                      text = "status_bar\StatusBarBackground.paa"; 
              };
      };
		
	
	class controls 
	{
		class statusBarText
		{
			idc = 1000;
			x = safezoneX + safezoneW - 1.08;
			y = safezoneY + safezoneH - 0.060;
			w = 1.35;
			h = 0.06;
			shadow = 2;
			font = "PuristaSemibold";
			size = 0.035;
			type = 13;
			style = 2;
			text = " ";
			class Attributes {
				align = "center";
				color = "#fffae2";
				font = "PuristaSemibold";
			};
		};
	};
};
