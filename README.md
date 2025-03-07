# Cork

A fast GUI for Homebrew written in SwiftUI

[![Mastodon Link](https://img.shields.io/mastodon/follow/108939255808776594?domain=https%3A%2F%2Fmstdn.social&label=Follow%20me%20for%20updates&style=flat)](https://elk.zone/mstdn.social/@davidbures)
[![Mastodon Link](https://img.shields.io/discord/1083475351260377119?label=Tak%20to%20me%20on%20Discord&style=flat)](https://discord.gg/kUHg8uGHpG)

## Special Thanks

I'd like to personally thank [Seb Jachec](https://github.com/sebj) for implementing a system for getting real-time outputs of Brew commands. 

Without his contribution, many of the processes that depend on real-time outputs, such as installation, uninstallation and updating of packages, would be impossible.

## Getting Cork

Pre-compiled, always up-to-date versions are available from my Homebrew tap, which you get access to by donating 5€/month. You can donate through [Ko-Fi](https://ko-fi.com/buresdv) or [GitHub Sponsors](https://github.com/sponsors/buresdv).

However, as Cork is open source, you can always compile it from source for free. See below for instructions.

## Screenshots
### Main Window
![Start Page](https://i.imgur.com/N8HQtcL.jpg)

### Package Info
![Package Info](https://i.imgur.com/jQLTlOc.jpg)
![Package Info - Full-size Caveats](https://i.imgur.com/ysoa3Hs.jpg)
![Package Info - Minimized Caveats](https://i.imgur.com/vNwRUng.jpg)

### Tap Info
![Tap Info - Casks Only](https://i.imgur.com/Jn5BpuS.jpg)
![Tap Info - Formulae and Casks](https://i.imgur.com/9FghOAy.jpg)

### Install Package
![Install Package](https://i.imgur.com/CtqSCUu.jpg)
![Install Package - Fetching Dependencies](https://i.imgur.com/GuniTJH.jpg)
![Install Package - Installing Dependencies](https://i.imgur.com/EMmaSLA.jpg)

### Add Taps
![Tap Taps](https://i.imgur.com/bywcxaX.jpg)

### Brew Maintenance
![Brew Maintenance](https://i.imgur.com/TNYXFZQ.jpg)
![Brew Maintenance Results](https://i.imgur.com/UDNMz0i.jpg)

## Compiling Cork

Compiling Cork is simple, as it does not have many dependencies.

Prerequisites:

* macOS Ventura or newer
* Xcode 14.2 or newer
* Git

### Instructions:

**Before you begin**

*Skip if you already have an Apple Developer account*

0. Enroll your account in the developer program at [https://developer.apple.com/](https://developer.apple.com/)
1. Install Xcode
2. Add your Developer account to Xcode. To do so, in the Menu bar, click `Xcode → Settings`, and in the window that opens, click `Accounts`. You can add your account there
3. After you add your account, it will appear in the list of Apple IDs on the left od the screen. Select your account there
4. At the bottom of the screen, click `Manage Certificates...`
5. On the bottom left, click the **+** icon and select `Apple Development`
6. When a new item appears in the list called `Apple Development Certificates`, you can press `Done` to close the account manager

**Compiling Cork**

1. Clone this repo using `git clone https://github.com/buresdv/Cork.git && cd Cork && open .`
2. Double-click `Cork.xcodeproj`. Xcode should open the project
3. Wait until all the dependencies are resolved. It should take a couple minutes at most
4. In the Menu Bar, click `Product → Archive` and wait for the building to finish
5. A new window will open. From the list of Cork rows, select the topmost one, and click `Distribute App`
6. Click `Copy App`
7. Open the resulting folder. You'll see an app called Cork. Drag Cork to your `/Applications/` folder, and you're done!

## License

Cork is licensed under [Commons Clause](https://commonsclause.com).

This means that Cork open-source and you can do whatever you want with Cork's source, like modifying it, contributing to it etc., but you can't sell Cork or modified versions of it.
