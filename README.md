# Kana
Kana is a system tray widget designed for Japanese learners. It provides a **Hiragana/Katakana reference chart** and a **Dictionary Search**  (coming soon 😅), built with native KDE components to look and feel like part of your desktop.

<img width="1028" height="527" alt="Group 2" src="https://github.com/user-attachments/assets/efb29cbe-0f2f-43e1-8f28-5a8515913867" />

## Features

* **Kana Chart:** A table for Hiragana and Katakana with Romaji.
* **Dictionary Search (coming soon 🤞)**

## Prerequisites
* **KDE Plasma 6**
* **Qt 6** / **Kirigami**
* **Command Line Tools:** `kpackagetool6` (or `kpackagetool5` for older systems)

## Installation
Navigate to the downloaded folder and run the following command to install the widget to your local user directory:
```bash
kpackagetool6 -i package --type Plasma/Applet
