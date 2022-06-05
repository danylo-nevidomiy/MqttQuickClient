import QtQuick 2.5
import QtQuick.Controls
import QtQuick.Dialogs
import QtQuick.Layouts 1.1
import "SpaceCreator.js" as SpaceCreator

Item{
    id: board
    anchors.fill: parent
    signal chooseQML()
    StackView{
        id: multiview
               anchors.fill: parent
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        initialItem: "InitialItem.qml"

    }

}
