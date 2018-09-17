# Slacky Dark
Dark mode theme for Slack desktop clients
```diff
- ! New update with flatter look - 9/14/18
- ! Changed ssb-interop.js code to append to body instead of head tag to overwrite custom theme settings. 
    No need to add the theme colors anymore. 9/17/18
```

# Preview
![image](https://user-images.githubusercontent.com/6263626/45573284-6277fa00-b829-11e8-8c18-02c7d57cdbf3.PNG)

# Installing into Slack client
```javascript
*For quick/easy install on Windows, check the **Automated Install** section at the bottom.
```

Find the Slack application directory as follows:
* Windows: `%homepath%\AppData\Local\slack\`
* Mac: `/Applications/Slack.app/Contents/`
* Linux: `/usr/lib/slack/`

Open the most recent version folder (Ex. app-3.1.0).

Navigate to: `\resources\app.asar.unpacked\src\static` and edit the file `ssb-interop.js`.

At the very bottom of the file, add the following code:

```javascript
document.addEventListener('DOMContentLoaded', function() {
 $.ajax({
   url: 'https://raw.githubusercontent.com/alienator88/slacky-dark/master/dark.css',
   success: function(css) {
     $("<style></style>").appendTo('body').html(css);
   }
 });
});
```
After save, restart Slack.

```javascript
*Note: This will have to be done after each Slack app update as the file is overwritten.*
```

# Automated Install (Windows)

1. Open powershell and run the following to allow unsigned scripts ```set-executionpolicy unrestricted```

2. Download SlackInstall.ps1 and run it with powershell. This will automatically add all the code to the correct file.

3. Open Slack and set your color pallete like above and you're all done.

# Enabling Developer Tools in Slack

* Windows: Create a shortcut to Slack and change the target to 

`C:\Windows\System32\cmd.exe /c " SET SLACK_DEVELOPER_MENU=TRUE && start C:\existing\path\to\slack.exe"`

using the path to `slack.exe` that you already have on your computer. (Or use the powershell script SlackDev.ps1)

Run Dev Tools with Ctrl+Alt+I or from Menu > View > Developer.

* Mac: Set up as an Automator program with the "program" being Run Shell Script that has the following code:

```
export SLACK_DEVELOPER_MENU=true

open -a /Applications/Slack.app
```

Run Dev Tools with Command+Option+I or from Menu > View > Developer.

**Credits**

###### [Slack Night Mode](https://github.com/laCour/slack-night-mode) ######

###### [Slack Black Theme](https://github.com/widget-/slack-black-theme) ######
