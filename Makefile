run:
	flutter pub get
	flutter build linux --release
install:
	cp -r ./build/linux/release/bundle/ /opt/macosabout/
	ln -sf /opt/macosabout/macosabout /usr/bin/macosabout
