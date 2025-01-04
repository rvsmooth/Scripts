#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR"/../icandy/colors.sh

NATIVE_PKGS=(
	"btop"
	"calibre"
	"flatpak"
	"gimp"
	"kiwix-desktop"
	"mpv"
	"musikcube"
	"neovim"
	"newsboat"
	"npm"
	"obs-studio"
	"qbittorrent"
)

FLATPAKS=(
	"com.brave.Browser"
	"com.notesnook.Notesnook"
	"eu.betterbird.Betterbird"
	"one.ablaze.floorp"
	"org.localsend.localsend_app"
	"org.onlyoffice.desktopeditors"
)


PYELL Installing User Applications......
$SPS "${NATIVE_PKGS[@]}"
PDONE


PYELL Installing Flatpaks
flatpak install -y --system "${FLATPAKS[@]}"
PDONE

PYELL Setting floorp as default Browser
xdg-settings set default-web-browser one.ablaze.floorp.desktop 
PDONE
