#-------------------------------------------------
#
# XCITE project created by XBY developers
#
#-------------------------------------------------

VERSION = 0.0.0

QT	+= core gui
QT	+= quick
CONFIG	+= c++11

DEFINES += QT_DEPRECATED_WARNINGS

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = xcite
TEMPLATE = app

CONFIG(debug, debug|release) {
    DESTDIR = build/debug
}
CONFIG(release, debug|release) {
    DESTDIR = build/release
}

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.qrc
UI_DIR = $$DESTDIR/.u

SOURCES += main/main.cpp \
	    backend/backend.cpp \
	    backend/iobject.cpp \
    backend/backend.cpp \
    backend/iobject.cpp \
    frontend/GridStarLayout/qquickgriddefinition.cpp \
    frontend/GridStarLayout/qquickgridstar.cpp \
    main/main.cpp

RESOURCES += frontend/qml.qrc

QML2_IMPORT_PATH += frontend/EmbeddedAuto
include("frontend/GridStarLayout/quickgridstarlayout.pri")

HEADERS  += backend/backend.hpp \
	    backend/iobject.hpp \
    backend/backend.hpp \
    backend/iobject.hpp \
    frontend/GridStarLayout/qquickgriddefinition.h \
    frontend/GridStarLayout/qquickgridstar.h

DISTFILES += \
    android/AndroidManifest.xml \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/drawable/splash.xml \
    android/res/values/apptheme.xml \
    android/res/values/libs.xml \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/build.gradle \
    android/gradlew.bat \
    android/gradle.properties \
    android/local.properties

