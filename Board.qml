import MqttClient 1.0
import QtQuick 2.0

Item {
//    anchors.centerIn: parent
    width:400
    height:300

    //    Rectangle{
    //        anchors.fill: parent
    //        color: "black"
    BoardItem{
        id: indicator
        anchors.centerIn: parent
        width: 100; height: 100
        indicator: IndicatorItem {
            anchors.fill: parent
            color: "red"
            //                width:parent.width
            //                height:parent.height

        }
    }
    Component.onCompleted: console.log("The pie is colored " + indicator.indicator.color)

    //    }

}
