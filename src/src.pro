TARGET=runtime-hello

QT += network
QT -= gui

win32 {
    debug: LIBS += -lqhttpserverd
    else: LIBS += -lqhttpserver
} else {
    LIBS += -lqhttpserver
}

INCLUDEPATH += ../qhttpserver/src
LIBS += -L../qhttpserver/lib

HEADERS += \
    helloworld.h

SOURCES += \
    helloworld.cpp

	
	
#unix: LIBS += -L$$OUT_PWD/../qhttpserver/lib/ -lqhttpserver

#INCLUDEPATH += $$PWD/../qhttpserver/src
#DEPENDPATH += $$PWD/../qhttpserver/src
