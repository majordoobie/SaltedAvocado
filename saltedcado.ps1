<# 
	Please read the descriptions!
#>
<#
	Enable or disbale functions
#>


$shortcuts = $FALSE
$goodmorning = $FALSE
$caffeine = $FALSE
$pushups = $FALSE

if ($shortcuts) {
	<# 
		[ What it does ]
		
		This functions makes .lnk files that you can call on with a Hotkey
		
		[ Variables you can change ]
		
			[$config]
				This is the config sectin, you can add any address you want along with a hotkey. The hotkeys
				will launch the address with your default browser.
				
				@{
					NAME = 'NameForTheLink'	<-- Single Quotes
					LINK = "Webpage"		<-- Double Quotes
					HOTKEY = "CTRL+ALT+L"	<-- Double Quotes
				}
			[ $linkdir ] 
				This is a variable that poins to the directory the script will use to save your .lnk files
	#>


$config = @(
	@{
		NAME = 'Gmail'
		LINK = "https://mail.google.com/mail/u/0/#inbox"
		HOTKEY = "CTRL+ALT+G"
		}
	)

	# Directory you want to put your link files in MUST END IN \
	$linkdir = "C:\"
	$ext = ".link"
	
	
	# Create a directory linkdir if it does not exist
	if (!(Test-Path -Path $linkdir)){
		New-Item -ItemType directory -Path $linkdir
		} else {
			Remove-Item -Path $linkdir\* -Include *.lnk
			}
			
	# loop to instanciate every object
	foreach ($shortcut in $config){
		$Sh = New-Object -ComObject ("WScript.Shell")
		$ShortC = $Sh.CreateShortcut($linkdir+$shorcut.name+$ext)
		$ShortC.Hotkey = $shortcut.HOTKEY
		$shortcut.save()
		}
	}
	
	
if ($goodmorning){
	<#
		--> [What id does]
				Auto start all your apps in the morning from skype, outlook, your browser etc..
				
				
		--> [Examples]
				Start-Process onenote.exe -WindowStyle Minimized
				Start-Process cmd.exe -ArgumentList "/k U: && cd U:\Some\Drive\ipython.exe" -WindowStyle Minimized
				Start-Process chrome.exe https://google.com/mail/u/0/#inbox
				
	#>
	Start-Process outlook.exe
	}
	
	
if ($pushups){
	<#
	--> This app will remind you when yo do pushups throughout the day and keep track of the amount of reps you have
	completed.
	
	--> [Variables you can change]
			[$waittime]
				this is how long youwant to wait between sets in seconds
				
			[$reps]
				How many reps you want to complete in each set
				
	#>

	$waittime = 2400
	$rep = 20
	
	if ($caffeien){
		$tmpObj = New-Object -com "Wscript.Shell"
		if ($waittime -gt 180) {
			$waittime - 180
			}
		}


	Write-Host "Push-Up script. Leave me running." -ForegroundColor Magenta
	Add-Type -AssemblyName System.Windows.Forms
	$results = [System.Windows.Forms.MessageBox]::Show('You have executed the push-up script
	Press ok to begin', 'PUSH-UP ALERT!', 'ok', 'Warning')
	
	$i = 0
	$t = 0
	while($true){
		$i ++
		if ($caffeine){
			Start-Sleep -s 180
			$somefuckingvariable.sendkeys("{SCROLLLOCK}")
			Write-Host "Scroll lok boi"
			}
		Start-Sleep -s $waittime
		$Message = "DO $reps PUSH-UPS.
		$t done so far"
		$results = [System.Windows.Forms.MessageBox]::Show($Message, 'PUSH-UP ALERT', 'ok', 'Warning')
		$t = $i * $rep
		Write-Host "Completed sets/total $i/$t" -ForegroundColor Cyan
		}
	}
	
	
	if ($caffeine){
		$somefuckingvariable = New-Object -com "Wscript.Shell"
		$i = 1
		Write-Host "Leave me running, minimize the window." -ForgrondColor Red
		while($true){
			Start-Sleep -s 180
			$somefuckingvariable.sendkeys("{SCROLLLOCK}")
			Write-Host "Wake the fuck up, please: $i" -ForegroundColor Magenta
			$i++
		}
	}




