## [East Wallet](https://wallet.easthub.io)

[![Build Status](https://travis-ci.org/east-coin/eastwallet.svg?branch=master)](https://travis-ci.org/east-coin/eastwallet)

### [Download the Latest Release](https://github.com/east-coin/eastwallet/releases/latest)

- eastwallet-vX.X.X.X.zip is the smaller package containing the gh-pages branch aka EastWallet.
- chrome-extension-vX.X.X.X.zip is the chrome extension package
- source code is the full source for developers to get started with (although cloning or forking the mercury branch is probably a better choice)

### East Coin Websites

- [EASThub Homepage](http://www.easthub.io)
- [Github EAST Repo](https://github.com/east-coin)
- [Github EAST Wallet Repo](https://github.com/east-coin/eastwallet)
- [Github Pages URL](https://east-coin.github.io/eastwallet)
- [Github Latest Releases](https://github.com/east-coin/eastwallet/releases/latest)
-  EAST ETH Donation Address: TBA
-  EAST BTC Donation Address: TBA

### `master` is the development branch. gh-pages contains only the smaller dist folder only and is served to wallet.easthub.io

- Our infrastructure ("node") is on AWS. [You can also use your own node.](https://myetherwallet.github.io/knowledge-base/networks/run-your-own-node-with-myetherwallet.html)

### About EastWallet

- EastWallet is a free, open-source, client-side tool for easily & securely interacting with the Eastcoin network. As one of the leading providers of Eastcoin services, EastWallet equips users with an easy-to-understand and accessible suite of tools for their needs.
- It was created and is maintained by [East Coin](https://github.com/eastcoinuser).
- It is originally made by MyEtherWallet LLC.

#### Features

- Create new wallets completely client side.
- Access your wallet via unencrypted private key, encrypted private key, keystore files, mnemonics, or Digital Bitbox, Ledger Nano S or TREZOR hardware wallet.
- Easily send EAST and *any* ERC-20 Standard Token. [Many tokens included as default.](https://myetherwallet.groovehq.com/knowledge_base/topics/can-i-send-my-steem-slash-btc-slash-ltc-slash-nem-slash-to-myetherwallet)
- Generate, sign & send transactions offline, ensuring your private keys never touch an internet-connected device.
- Securely access your EAST & Tokens on your [Digital Bitbox, Ledger or TREZOR Hardware Wallet](https://myetherwallet.groovehq.com/knowledge_base/topics/hardware-wallet-recommends) via the MyEtherWallet interface (Chrome & Opera natively, Firefox w/ [add-on](https://addons.mozilla.org/en-US/firefox/addon/u2f-support-add-on/))
- Supports URI Strings on Send Transaction Page.
    - to=[address]
    - value=[number]
    - sendMode=[ether | token]
    - tokenSymbol=[ARC | ICN | MKR | ....]
    - gasLimit=[number] OR gas=[number]
    - data=[hex data]
    - Example 1: https://www.myetherwallet.com/?to=0xDECAF9CD2367cdbb726E904cD6397eDFcAe6068D&value=1&tokenSymbol=REP&gaslimit=50000#send-transaction
    - Example 2: https://www.myetherwallet.com/?to=0xDECAF9CD2367cdbb726E904cD6397eDFcAe6068D&value=1&gaslimit=23000&data=0x5468616e6b20796f752c204d455720322e30#send-transaction

### Our Philosophy

 - **Empower the people**: Give people the ability to interact with the Eastcoin blockchain easily, without having to run a full node.
 - **Make it easy & free**: Everyone should be able to create a wallet and send Ether & Tokens without additional cost.
 - **People are the Priority**: People are the most important & their experience trumps all else. If monetization worsens the experience, we don't do it. (e.g. ads)
 - **A learning experience, too**: We want to educate about Eastcoin, security, privacy, the importance of controlling your own keys, how the blockchain works, and how Eastcoin and blockchain technologies enable a better world.
 - **If it can be hacked, it will be hacked**: Never save, store, or transmit secret info, like passwords or keys.
 - **Offline / Client-Side**: User should be able to run locally and offline without issue.
 - **Private**: No tracking!!! No emails. No ads. No demographics. We don't even know how many wallets have been generated, let alone who / what / where you are.
 - **Open source & audit-able**

### Users (non-developers)

- [It is recommended you start here.](https://myetherwallet.github.io/knowledge-base/getting-started/getting-started-new.html)
- You can run EastWallet on your computer. You can create a wallet completely offline & send transactions from the "Offline Transaction" page.

1. Go to https://github.com/east-coin/eastwallet/releases/latest.
2. Click on eastwallet-vX.X.X.X.zip.
3. Move zip to an airgapped computer.
4. Unzip it and double-click index.html (Or open with your favorite Web Browser).
5. EastWallet is now running entirely on your computer.

In case you are not familiar, you need to keep the entire folder in order to run the website, not just index.html. Don't touch or move anything around in the folder. If you are storing a backup of the EastWallet repo for the future, we recommend just storing the ZIP so you can be sure the folder contents stay intact.

As we are constantly updating EastWallet, we recommend you periodically update your saved version of the repo.

### Developers

If you want to help contribute, here's what you need to know to get it up and running and compiling.

- Both the Chrome Extension and the EastWallet are compiling from the same codebase. This code is found in the `app` folder.
- We use angular and bootstrap. We used to use jQuery and Bootstrap until it was converted in April 2016. If you wonder why some things are set up funky, that's why.
- The master branch is currently the active development branch. We then push the dist folder live to gh-pages, which then gets served to the live version of EastWallet.
- We use npm / gulp for compiling. There is a lot of stuff happening in the compilation.

**Getting Started**

- Start by running `npm install`.
- Run `npm run dev`. Gulp will then watch & compile everything and then watch for changes to the HTML, JS, or CSS.
- For distribution, run `npm run dist`.

**Folder Structure**
- `fonts` and `images` get moved into their respective folders. This isn't watched via gulp so if you add an image or font, you need to run `gulp` again.
- `includes` are the pieces of the pages / the pages themselves. These are pretty self-explanatory and where you will make most frontend changes.
- `layouts` are the pages themselves. These basically take all the pieces of the pages and compile into one massive page. The navigation is also found here...sort of.
    * `index.html` is for EastWallet.
    * `cx-wallet.html` is the main page for the Chrome Extension.
    * `embedded.html` is for https://wallet.easthub.io/embedded.html.

- You can control what shows up on EastWallet vs the Chrome Extension by using: `@@if (site === 'cx' )  {  ...  }` and `@@if (site === 'mew' ) { ... }`. Check out `sendTransaction.tpl` to see it in action. The former will only compile for the Chrome Extension. The latter only to EastWallet.
- `embedded.html` is for embedding the wallet generation into third-party sites. [Read more about it and how to listen for the address generated here.](https://www.reddit.com/r/ethereum/comments/4gn37o/embeddable_myetherwallet_super_simple_wallet/)
- The wallet decrypt directives are at `scripts/directives/walletDecryptDrtv.js`. These show up on a lot of pages.
- The navigation is in `scripts/services/globalServices.js`. Again, we control which navigation items show up in which version of the site in this single file.
- As of September 2016, almost all the copy in the .tpl files are only there as placeholders. It all gets replaced via angular-translate. If you want to change some copy you need to do so in `scripts/translations/en.js` folder. You should also make a note about what you changed and move it to the top of the file so that we can make sure it gets translated if necessary.
- `styles` is all the less. It's a couple custom folders and bootstrap. This badly needs to be redone. Ugh.

### Use Your Own Servers / Node Guide

- [Setting up on AWS super easily.](https://github.com/MyEtherWallet/docker-geth-lb)

- [Running MyEtherWallet w/ Your Own Personal Node](https://myetherwallet.github.io/knowledge-base/networks/run-your-own-node-with-myetherwallet.html)

- [Guide by benjaminion for MEW + Ledger Nano S + Local Parity Node](https://github.com/benjaminion/eth-parity-qnap/wiki/Connecting-to-MyEtherWallet)

### How to Help Translate

**A couple of notes:**

- Everything on the entire site is broken down into lines and in this one file. The uppermost items are the highest priority and the further you go down, the less of a priority it is.
- You can add comments anywhere by wrapping it in /* Your Comment Here */. If you want to leave a note for yourself or someone else, do so in this format. That way it doesn't screw up the code or show up somewhere on the site.
- Don't delete any lines. Just leave it in English if you don't know how to translate it.
- Always make sure each line ends with `',`. So the format is `NAME: ' your text here ',` You only need to change the `your text here` part - try not to touch anything else.

**If you are NOT a developer and have no idea how this works:**

Anyone can help out and it looks way more complicated than it is! If you would rather not deal with Github, please send us an email to info@myetherwallet.com and I'll email you the file and you can make changes and send it back to us and I'll make sure you don't screw anything up. If you feel like experiencing something new, read on!

1. Sign into your Github account or make a new Github account.
2. Go to https://github.com/east-coin/eastwallet/tree/master/app/scripts/translations
3. Click on the language file you want to update.
4. Look in the upper right. Click the pencil icon. This will then tell you, *"You’re editing a file in a project you don’t have write access to. We’ve created a fork of this project for you to commit your proposed changes to. Submitting a change to this file will write it to a new branch in your fork, so you can send a pull request."* Ignore it all.
5. In your browser, start translating. Translate as little or as much as you want.
6. Scroll down to halfway to the translator's section. Enter your name/username, donation address, and any comments you would like to leave.
7. When you are done, tell us what language you updated. You can also leave any notes about problems you had or things you'd like us to know.
8. Click the green "Propose File change" button.
9. This next page is a review of what you did.
10. Click the "Create Pull Request" button.....twice. [Screenshot](https://ipfs.pics/ipfs/QmZJJvPxXu7BFHDQ1zj1a73EATQETbsDuAJVEJnatTHrms).
11. That's it. You successfully made a new pull request! Tell all your friends.
12. We will now review it and pull it in and it will be made live on the site. We may also ask you questions if something is confusing for whatever reason.

**If you are a developer and familiar with GitHub, Pull Requests, and know how to save a JS file as a .js file rather than a Word Doc:**

1. Clone the [master branch](https://github.com/east-coin/eastwallet/tree/master).
2. Go to `/app/scripts/translations/`.
3. Open the language you want to translate.
4. Translate as much or as little as you wish.
5. Add your name/username, donation address, and any notes you would like on in the translator's section, about halfway down.
6. Open a PR and leave us a brief description of what you did and any issues you ran into or comments you have.

Read more @ [Help us translate MyEtherWallet.com into ALL THE LANGUAGES!](https://www.reddit.com/r/ethereum/comments/4z55s2/help_us_translate_myetherwalletcom_into_all_the/)

### Contact
If you can think of any other features or run into bugs, let us know. You can fork, open a PR, open an issue, or support at [Easthub.io](http://www.easthub.io).

#### EastWallet are licensed under The MIT License (MIT).
