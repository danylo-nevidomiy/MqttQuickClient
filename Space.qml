import QtQuick 2.0
import QtQuick.Controls


Item {
    property color color: rect.color
    Rectangle{
        id:rect
        anchors.fill: parent
        color:"black"
        ScrollView {
            id: scrollView
            anchors.fill: parent
            Column {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                spacing: 5

//                Rectangle{
//                    width:400
//                    height:300
//                    SwitchItem{name:"SwitchName1"}}
                Rectangle{Input{}
                    width:400
                    height:300}
                Rectangle{Value{name:"failed"}
                    width:400
                    height:300}
                Rectangle{Chart{}
                width:400
                height:300}
//                Rectangle{
//                    width:400
//                    height:300
//                    SwitchItem{}}


            }

        }
    }
}


