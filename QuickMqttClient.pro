QT += qml quick quickwidgets core network mqtt

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
CONFIG += c++11 qmltypes


SOURCES += \
        boarditem.cpp \
        chartitem.cpp \
        chartregisterer.cpp \
        indicatoritem.cpp \
        main.cpp \
        mqttitem.cpp

RESOURCES += qml.qrc

QML_IMPORT_NAME = MqttClient
QML_IMPORT_MAJOR_VERSION = 1
# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    boarditem.h \
    chartitem.h \
    chartregisterer.h \
    indicatoritem.h \
    mqttitem.h
