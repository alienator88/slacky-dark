# Slacky Dark
Dark mode theme for Slack desktop and web based clients
```diff
- ! This does not work with Slack 4.0 or higher. Only 3.4 and below as it requires a new process to unpack the app.asar file.
- ! I'm not maintaining issues for this anymore. 
```

# Preview
![image](https://user-images.githubusercontent.com/6263626/45646513-cc3e1100-ba80-11e8-817c-368b6525f7df.PNG)

# Installing into Slack Desktop client
```javascript
*For quick/easy install on Windows, check the **Automated Install** section at the bottom.
```

1. Find the Slack application directory as follows:
* Windows: `%homepath%\AppData\Local\slack\`
* Mac: `/Applications/Slack.app/Contents/`
* Linux: `/usr/lib/slack/`

**NOTE**: You can do this to the Windows Store UWP Slack app as well, but it's recommended to use the Desktop version. If you want to go the UWP route, give yourself access to the following hidden folder `C:\Program Files\WindowsApps\`. The instructions below can be followed in this folder pretty much the same as the ones above.

2. Open the most recent version folder (Ex. app-3.1.0).

3. Navigate to: `\resources\app.asar.unpacked\src\static` and edit the file `ssb-interop.js`.

4. At the very bottom of the file, add the following code:

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
5. After save, restart Slack.

```javascript
*Note: This will have to be done after each Slack app update as the file is overwritten.*
```

# Installing into Slack Web Based Client

1. Install the Stylus extension for [Chrome](https://chrome.google.com/webstore/detail/stylus/clngdbkpkpeebahjckkjfobafhncgmne?hl=en) or [Firefox](https://addons.mozilla.org/en-US/firefox/addon/styl-us/)

2. Apply the style from my [UserStyles.org](https://userstyles.org/styles/164675/slacky-dark) page.

# Automated Install (Windows)

1. Open powershell and run the following to allow unsigned scripts ```set-executionpolicy unrestricted```

2. Download SlackInstall.ps1 and run it with powershell. This will automatically add all the code to the correct file.

# Enabling Developer Tools in Slack

* Windows: Create a shortcut to Slack and change the target to 

`C:\Windows\System32\cmd.exe /c "SET SLACK_DEVELOPER_MENU=TRUE && start %homepath%\AppData\Local\slack\slack.exe"`

Run Dev Tools with <kbd>CTRL</kbd>+<kbd>ALT</kbd>+<kbd>I</kbd>. (Menu > View > Developer) 

Refresh Slack window with <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>R</kbd>. (Menu > View > Developer)

* Mac: Set up as an Automator program with the "program" being Run Shell Script that has the following code:

```
export SLACK_DEVELOPER_MENU=true

open -a /Applications/Slack.app
```

Run Dev Tools with <kbd>⌘ Command</kbd>+<kbd>⌥ Option</kbd>+<kbd>I</kbd>.  (Menu > View > Developer) 

Refresh Slack window with <kbd>⌘ Command</kbd>+<kbd>SHIFT</kbd>+<kbd>R</kbd>.  (Menu > View > Developer) 

**Credits**
###### [Slack Night Mode](https://github.com/laCour/slack-night-mode) | [Slack Black Theme](https://github.com/widget-/slack-black-theme)
