<p align="center">
  <img src="https://raw.githubusercontent.com/varunsridharan/action-envato-uploader/main/assets/logo.png" alt="Envato"/>
</p>

# Envato FTP Uploader - ***Github Action***
Github Action Which Uploads Files Onto Envato FTP

## Configuration
| Argument | Default | Description |
| --- | ------- | ----------- |
|`envato_username` | null | Your Envato Account Username |
|`envato_access_code` | null | Your Envato Access Code `Personal Access Token`. See Blow On How To Get Your Token |
|`envato_dist_path` | ./dist | Local Path From Where Files To Be Copied To Envato FTP |

---

## Envato Personal Token
1. Navigate To : https://build.envato.com/my-apps
2. Scroll Down To : `Your personal tokens` Heading
3. Click **Create New Token** - Refer Below Image
4. Provide A Token Name
5. Check First 2 Permissions - Refer Below Image
    1. *View and search Envato sites*
    2. *View the user's Envato Account username*
6. Scroll Down & Click Create Token

### Create Token Option
![https://raw.githubusercontent.com/varunsridharan/action-envato-uploader/main/assets/1566526864-182.jpg](https://raw.githubusercontent.com/varunsridharan/action-envato-uploader/master/assets/1566526864-182.jpg)

### Token Permissions
![https://raw.githubusercontent.com/varunsridharan/action-envato-uploader/main/assets/1566526963-120.jpg](https://raw.githubusercontent.com/varunsridharan/action-envato-uploader/master/assets/1566526963-120.jpg)

---

## Example Workflow File
```yaml
name: Envato FTP Uploader

on:
  push:
    branches:
    - refs/tags/*

jobs:
  Envato_Uploader:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: Enavto FTP Uploader
      uses: varunsridharan/action-envato-uploader@main
      with:
        envato_username: ${{ secrets.envato_username }}
        envato_personal_token: ${{ secrets.envato_personal_token }}
        envato_dist_dir: "./dist"
```

---

## 📝 Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

[Checkout CHANGELOG.md](/CHANGELOG.md)

## 🤝 Contributing
If you would like to help, please take a look at the list of [issues](issues/).

## 💰 Sponsor
[I][twitter] fell in love with open-source in 2013 and there has been no looking back since! You can read more about me [here][website].
If you, or your company, use any of my projects or like what I’m doing, kindly consider backing me. I'm in this for the long run.

- ☕ How about we get to know each other over coffee? Buy me a cup for just [**$9.99**][buymeacoffee]
- ☕️☕️ How about buying me just 2 cups of coffee each month? You can do that for as little as [**$9.99**][buymeacoffee]
- 🔰         We love bettering open-source projects. Support 1-hour of open-source maintenance for [**$24.99 one-time?**][paypal]
- 🚀         Love open-source tools? Me too! How about supporting one hour of open-source development for just [**$49.99 one-time ?**][paypal]

## 📜  License & Conduct
- [**MIT**](LICENSE) © [Varun Sridharan](website)
- [Code of Conduct](code-of-conduct.md)

## 📣 Feedback
- ⭐ This repository if this project helped you! :wink:
- Create An [🔧 Issue](issues/) if you need help / found a bug

## Connect & Say 👋
- **Follow** me on [👨‍💻 Github][github] and stay updated on free and open-source software
- **Follow** me on [🐦 Twitter][twitter] to get updates on my latest open source projects
- **Message** me on [📠 Telegram][telegram]
- **Follow** my pet on [Instagram][sofythelabrador] for some _dog-tastic_ updates!

---

<p align="center">
<i>Built With ♥ By <a href="https://sva.onl/twitter"  target="_blank" rel="noopener noreferrer">Varun Sridharan</a> <a href="https://en.wikipedia.org/wiki/India"><img src="https://cdn.svarun.dev/flag-india-flat.svg" width="20px"/></a> </i>
</p>

---

<!-- Personl Links -->
[paypal]: https://sva.onl/paypal
[buymeacoffee]: https://sva.onl/buymeacoffee
[sofythelabrador]: https://www.instagram.com/sofythelabrador/
[github]: https://sva.onl/github/
[twitter]: https://sva.onl/twitter/
[telegram]: https://sva.onl/telegram/
[email]: https://sva.onl/email
[website]: https://sva.onl/website/

