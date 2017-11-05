waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];

[] spawn {
	sleep 5;
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{	
	
		sleep 1;
		_counter = _counter - 1;
		_time = (round(300-(serverTime)/60));  //edit the '240' (60*4=240) to change the countdown timer if your server restarts are shorter or longer than 4 hour intervals
		_hours = (floor(_time/60));
		_minutes = (_time - (_hours * 60));
		_damage = round ((1 - (damage player)) * 100);
		_thirst = round((EPOCH_playerThirst/2500) * 100);
		_hunger = round((EPOCH_playerHunger/5000) * 100);
		
		switch(_minutes) do
	{
		case 9: {_minutes = "09"};
		case 8: {_minutes = "08"};
		case 7: {_minutes = "07"};
		case 6: {_minutes = "06"};
		case 5: {_minutes = "05"};
		case 4: {_minutes = "04"};
		case 3: {_minutes = "03"};
		case 2: {_minutes = "02"};
		case 1: {_minutes = "01"};
		case 0: {_minutes = "00"};
	};
		
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetStructuredText parseText format
		
		["		   
		<t shadow='1' shadowColor='#000000'><img size='1.0'  shadowColor='#000000' image='status_bar\icons\fps.paa'/> %1</t>
		<t shadow='1' shadowColor='#000000'><img size='1.6'  shadowColor='#000000' image='status_bar\icons\hunger.paa'/> %2</t>
		<t shadow='1' shadowColor='#000000'><img size='1.6'  shadowColor='#000000' image='status_bar\icons\thirst.paa'/> %3</t>
		<t shadow='1' shadowColor='#000000'><img size='1.0'  shadowColor='#000000' image='status_bar\icons\health.paa'/> %4</t>
		<t shadow='1' shadowColor='#000000'><img size='1.0'  shadowColor='#000000' image='status_bar\icons\biohazard.paa'/> %5</t>
		<t shadow='1' shadowColor='#000000'><img size='1.0'  shadowColor='#000000' image='status_bar\icons\nuclear.paa'/> %6</t>
		<t shadow='1' shadowColor='#000000'><img size='1.0'  shadowColor='#000000' image='status_bar\icons\money.paa'/> %7</t>
		<t shadow='1' shadowColor='#000000'><img size='1.6'  shadowColor='#000000' image='status_bar\icons\restart.paa'/>%8:%9</t>",      
		round diag_fps, _hunger, _thirst, _damage, EPOCH_playerToxicity, EPOCH_playerRadiation, EPOCH_playerCrypto, _hours, _minutes, _counter];
	}; 
};
