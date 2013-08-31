ERROR <- -1
PANIC <- 0
TANK <- 1
DELAY <- 2
ONSLAUGHT <- 3 // In some vscripts (c8m5_rooftop_finale), ONSLAUGHT is labeled as SCRIPTED
 
DirectorOptions <-
{
	//-----------------------------------------------------
	 CommonLimit = 30
	 A_CustomFinale_StageCount = 8  
 
	 A_CustomFinale1 = PANIC
	 A_CustomFinaleValue1 = 2   // two panic events
 
	 A_CustomFinale2 = DELAY
	 A_CustomFinaleValue2 = 12  // delay for twelve seconds in addition to stage delay
 
	 A_CustomFinale3 = TANK
	 A_CustomFinaleValue3 = 3  // 3 tanks!
 
	 A_CustomFinale4 = DELAY
	 A_CustomFinaleValue4 = 12 // wait some more
 
	 A_CustomFinale5 = PANIC
	 A_CustomFinaleValue5 = 2 // run our onslaught script
 
	 A_CustomFinale6 = DELAY
	 A_CustomFinaleValue6 = 15 // wait 15 seconds
 
	 A_CustomFinale7 = TANK
	 A_CustomFinaleValue7 = 2  // one more tank
 
	 A_CustomFinale8 = DELAY
	 A_CustomFinaleValue8 = 10 // wait ten seconds ... rescue!
 
	 SpecialRespawnInterval = 25
 
	//-----------------------------------------------------
}
 
function OnBeginCustomFinaleStage( num, type )
{
      printl( "Beginning custom finale stage " + num + " of type " + type );
      MapScript.DirectorOptions.CommonLimit = num * 10 // increase commons by 10 linearly with stages
}