#included2.ps1 contains tasks InitX (sets x to 80) and InitY (sets y to 80)
. .\included\included2.ps1

Task default -Depends InitX,CheckX, InitY, CheckY

Task InitX -Override {
	$psake.x = 50
}

Task CheckX {
	Assert ($psake.x -eq 50) '$x was not 50' 
}

Task CheckY {
	Assert ($psake.y -eq 80) '$y was not 80'	
}