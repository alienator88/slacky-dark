# Slacky Dark
Dark mode theme for Slack desktop clients

# Preview
![image](https://user-images.githubusercontent.com/6263626/42473985-71adfbda-8383-11e8-8bef-56e7b3dcf635.png)

# Installing into Slack client
Find the Slack application directory as follows:
* Windows: `%homepath%\AppData\Local\slack\`
* Mac: `/Applications/Slack.app/Contents/`
* Linux: `/usr/lib/slack/`

Open the most recent version folder (Ex. app-3.1.0).

Navigate to: `\resources\app.asar.unpacked\src\static` and edit file `ssb-interop.js`

At the very bottom of the file, add a few spaces and the following code:

```
document.addEventListener('DOMContentLoaded', function() {
 $.ajax({
   url: 'https://raw.githubusercontent.com/alienator88/slacky-dark/master/dark.css',
   success: function(css) {
     $("<style></style>").appendTo('head').html(css);
   }
 });
});
```

After save, restart Slack and enjoy the easy on the eyes theme.

If you used themes and the colors don't look fully correct after applying the changes, add the following custom theme codes in the Slack app: `#2d2d2d,#4d4d4d,#636363,#FFFFFF,#454545,#FFFFFF,#99D04A,#DB6668`

*Note: This will have to be done after each Slack app update as the file is overwritten.*
