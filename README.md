# Kana
Kana is a system tray widget designed for Japanese learners. It provides **Dictionary Search** and a **Kana Chart**, built with native KDE components to look and feel like a part of your desktop.

<img width="1018" height="521" alt="Group 2" src="https://github.com/user-attachments/assets/84d84c19-b7b2-4780-ad88-dba87bfb9928" />

## Features

* **Dictionary Search** Search words using Hiragana / Katanaka / Kanji / Romaji. Uses the unofficial jisho.org API.
* * **Kana Chart:** A table for Hiragana and Katakana with Romaji.

## Prerequisites
* **KDE Plasma 6**
* **Qt 6** / **Kirigami**
  
## Installation

### Option 1: Plasmoid file
* Download the .plasmoid file.
* Right-click on your desktop and select "Enter Edit Mode".
* Click "Add or Manage Widgets..." then "Get New..." and finally "Install Widget From Local File..."
* Select the downloaded .plasmoid file.

### Option 2: Command Line
Navigate to the downloaded folder (repo) and run the following command to install the widget to your local user directory:
```bash
kpackagetool6 -i package --type Plasma/Applet

