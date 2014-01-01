Include .\included.ps1

Task default -Depends IncludedCheck1, CheckX, Clean

Task RunNested2 {
	Invoke-psake .\nested\nested2.ps1
}

Task CheckX{
	$x
	Assert ($x -eq 100) '$x was not 100' 
}

Task Clean -Override {
	"overidden clean"
}