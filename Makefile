SOURCE_DIR=./usr/share/themes
TARGET_DIR=${HOME}/.themes

all: buildthemes

buildthemes:
	@echo "Building the themes"
	./generate-themes.py

install: buildthemes
	@echo "Install the themes in ${TARGET_DIR}..."
	@rsync -qavhP --delete ${SOURCE_DIR}/Mint-Y-Dock* ${TARGET_DIR}/
	@echo "Themes installed."

clean:
	rm -rf usr
