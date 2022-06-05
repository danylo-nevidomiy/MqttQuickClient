import QtQuick 2.5
import QtQuick.Controls
import QtQuick.Dialogs
import QtQuick.Layouts 1.1

Item{
    id: board
    anchors.fill: parent
    signal openSpace(url filename)
    property alias multiview: multiview
    Connections{
        target: board
        function onOpenSpace(filename)
        {
             console.log("Opening = " + filename)
            multiview.push(filename)
        }
    }
    StackView{
        id: multiview
        anchors.fill: parent
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        initialItem: "InitialItem.qml"

    }

}
