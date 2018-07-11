# Slacky Dark
Dark mode theme for Slack desktop clients

# Preview
![image](https://user-images.githubusercontent.com/6263626/42593334-5e385dfc-8509-11e8-810c-3aef29d02e0c.jpg)

# Installing into Slack client
Find the Slack application directory as follows:
* Windows: `%homepath%\AppData\Local\slack\`
* Mac: `/Applications/Slack.app/Contents/`
* Linux: `/usr/lib/slack/`

Open the most recent version folder (Ex. app-3.1.0).

Navigate to: `\resources\app.asar.unpacked\src\static` and edit file `ssb-interop.js`

At the very bottom of the file, add a few spaces and the following code:

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
```
#2d2d2d,#4d4d4d,#636363,#FFFFFF,#454545,#FFFFFF,#99D04A,#DB6668
```

*Note: This will have to be done after each Slack app update as the file is overwritten.*



# Dark Side 
This is a dark side color variant of the same theme with some red.

# Preview
![image](https://user-images.githubusercontent.com/6263626/42593468-c4fff48c-8509-11e8-9c68-dee6d5b0766e.jpg)

# Code
```javascript
document.addEventListener('DOMContentLoaded', function() {
 $.ajax({
   url: 'https://raw.githubusercontent.com/alienator88/slacky-dark/master/darkside.css',
   success: function(css) {
     $("<style></style>").appendTo('head').html(css);
   }
 });
});
```

After save, restart Slack and add the following custom theme codes in the Slack app: 
```
#2d2d2d,#4a4a4a,#a50000,#a50000,#454545,#a50000,#a50000,#DB6668
```

# Credits

[Slack Night Mode](https://github.com/laCour/slack-night-mode) - Original CSS used in these themes.




