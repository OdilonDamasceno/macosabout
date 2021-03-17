.DEFAULT_GOAL = run
APPIMAGE_BUILD_DIR=./build/appimage
BUILD_DEPENDENCIES=./assets/build_dependencies
APP_DIR=MacOSAbout.AppDir
APP_VERSION=`grep "version:" pubspec.yaml | awk -F: '{print $$2}' | sed 's/ *//g' | tr -d '\n'`
MACHINE=`uname -m`

run:
	flutter pub get
	flutter build linux --release
	mkdir -p ${APPIMAGE_BUILD_DIR}/
	cp -r build/linux/release/bundle/ ${APPIMAGE_BUILD_DIR}/${APP_DIR}
	chmod +x ${BUILD_DEPENDENCIES}/AppRun
	cp ${BUILD_DEPENDENCIES}/MacOSAbout.desktop ${APPIMAGE_BUILD_DIR}/${APP_DIR}/
	cp ${BUILD_DEPENDENCIES}/AppRun ${BUILD_DEPENDENCIES}/macosabout.png -t ${APPIMAGE_BUILD_DIR}/${APP_DIR}/
	appimagetool ${APPIMAGE_BUILD_DIR}/${APP_DIR}/ macosabout-${APP_VERSION}-${MACHINE}.AppImage

install:
	@sed "s?Exec=macosabout?Exec=${PWD}/macosabout-${APP_VERSION}-${MACHINE}.AppImage?g" assets/build_dependencies/MacOSAbout.desktop > /home/$$USER/.local/share/applications/MacOSAbout.desktop
	@cp ${BUILD_DEPENDENCIES}/macosabout.png /home/$$USER/.icons/

clean:
	flutter clean