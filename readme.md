# Slacky Dark
Dark mode theme for Slack desktop clients

# Preview
![image](https://user-images.githubusercontent.com/6263626/42593334-5e385dfc-8509-11e8-810c-3aef29d02e0c.jpg)

# Installing into Slack client
```javascript
For quick/easy install, check the Automated Install section below
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
     $("<style></style>").appendTo('head').html(css);
   }
 });
});
```
After save, restart Slack and add the following custom theme codes in the Slack app: 

Color Palette: 
![#2d2d2d](https://placehold.it/15/2d2d2d/000000?text=+)
![#4d4d4d](https://placehold.it/15/4d4d4d/000000?text=+)
![#636363](https://placehold.it/15/636363/000000?text=+)
![#FFFFFF](https://placehold.it/15/FFFFFF/000000?text=+)
![#454545](https://placehold.it/15/454545/000000?text=+)
![#FFFFFF](https://placehold.it/15/FFFFFF/000000?text=+)
![#99D04A](https://placehold.it/15/99D04A/000000?text=+)
![#DB6668](https://placehold.it/15/DB6668/000000?text=+)
```
#2d2d2d,#4d4d4d,#636363,#FFFFFF,#454545,#FFFFFF,#99D04A,#DB6668
```

```javascript
*Note: This will have to be done after each Slack app update as the file is overwritten.*
```

# Automated Install

1. Open powershell and run the following to allow unsigned scripts ```set-executionpolicy unrestricted```

2. Download SlackInstall.ps1 and run it with powershell. This will automatically add all the code to the correct file.

3. Open Slack and set your color pallete like above and you're all done.

# Credits
[Slack Night Mode](https://github.com/laCour/slack-night-mode) - Original CSS used in these themes.




