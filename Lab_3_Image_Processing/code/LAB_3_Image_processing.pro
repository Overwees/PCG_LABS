QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    imageprocessing.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    imageprocessing.h \
    mainwindow.h

RC_FILE = appIcon.rc

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target



win32:CONFIG(release, debug|release): LIBS += -L'C:/Program Files/OpenCV/opencv/build/x64/vc15/lib/' -lopencv_world460
else:win32:CONFIG(debug, debug|release): LIBS += -L'C:/Program Files/OpenCV/opencv/build/x64/vc15/lib/' -lopencv_world460d
else:unix: LIBS += -L'C:/Program Files/OpenCV/opencv/build/x64/vc15/lib/' -lopencv_world460

INCLUDEPATH += 'C:/Program Files/OpenCV/opencv/build/include'
DEPENDPATH += 'C:/Program Files/OpenCV/opencv/build/include'

RESOURCES += \
    icons.qrc
