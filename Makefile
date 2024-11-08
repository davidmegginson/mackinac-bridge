FG_SCENERY=${HOME}/Dropbox/FlightGear/local-scenery-mods

TARGET_DIR=Objects/w090n40/w085n45

FILES=mackinac-bridge.ac \
  mackinac-bridge.xml \
  mackinac-bridge1.png \
  mackinac-bridge2.png

VIEW_LAT=45.81203221
VIEW_LON=-84.69964029
VIEW_HDG=280
VIEW_ALT=1800

install: ${FILES}
	cp ${FILES} ${FG_SCENERY}/${TARGET_DIR}

view: install
	fgfs --timeofday=noon --aircraft=ufo --lat=${VIEW_LAT} --lon=${VIEW_LON} --heading=${VIEW_HDG} --altitude=${VIEW_ALT}

view-dusk: install
	fgfs --timeofday=dusk --aircraft=ufo --lat=${VIEW_LAT} --lon=${VIEW_LON} --heading=${VIEW_HDG} --altitude=${VIEW_ALT}

view-night: install
	fgfs --timeofday=midnight --aircraft=ufo --lat=${VIEW_LAT} --lon=${VIEW_LON} --heading=${VIEW_HDG} --altitude=${VIEW_ALT}
