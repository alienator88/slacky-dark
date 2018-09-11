
# Set environment variable
[System.Environment]::SetEnvironmentVariable('SLACK_DEVELOPER_MENU', 'true', 'Process')

 # Launch Slack (replace x.y.z with the latest version)
& $env:LOCALAPPDATA\slack\app-3.3.1\slack.exe
 # Open developer console by pressing: Ctrl + Alt + I
