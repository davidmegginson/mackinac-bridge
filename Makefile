FG_SCENERY=${HOME}/Dropbox/FlightGear/local-scenery-mods

TARGET_DIR=Objects/w090n40/w085n45

FILES=mackinac-bridge.ac


VIEW_LAT=45.79051832606557
VIEW_LON=-84.72997330511889
VIEW_HDG=355
VIEW_ALT=1000

install: ${FILES}
	cp ${FILES} ${FG_SCENERY}/${TARGET_DIR}

view: install
	fgfs --timeofday=noon --aircraft=ufo --lat=${VIEW_LAT} --lon=${VIEW_LON} --heading=${VIEW_HDG} --altitude=${VIEW_ALT}
