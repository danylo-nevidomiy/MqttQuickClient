import QtQuick 2.0
import QtQuick.Controls

Rectangle{
    id: rectangle
    color: "white"
    border.color: "#ffffff"
    anchors.fill: parent

    function addTab(){
        var tab = tabButton.createObject(tabBar, {text: "Tab " + tabBar.count, width: 50})
        tab.width = tab.implicitWidth
        tabBar.insertItem(tabBar.count-2, tab)

//        var swipe =
    }

    TabBar {
        id: tabBar
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
//        width: parent.width
//        height: parent.height
        clip: false
        TabButton {
            text: qsTr("Home")
            width: implicitWidth
        }
        TabButton {
            text: qsTr("Discover")
            width: implicitWidth
        }
        TabButton {
            text: qsTr("Activity")
            width: implicitWidth
        }
        TabButton {
            text: qsTr("+")
            width: implicitWidth
            onClicked: {addTab()}
        }
    }
    Component {
        id: tabButton
        TabButton { }
    }

    Item{
        id:swipeItem
    }

    SwipeView {
        id: swipeView
        anchors.top: tabButton.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        Item{
            id:firstPage
//            Board{}
        }
    }

//    StackView {
//        id: stackView
//        anchors.top: tabButton.top
//        anchors.left: parent.left
//        anchors.right: parent.right
//        anchors.bottom: parent.bottom
//        initialItem: page1

//        Rectangle{
//            id:page1
//            color: "black"
//            anchors.fill: parent
//        }
//    }

//    Button {
//        text: "Add"
//        anchors.centerIn: parent
//        onClicked: {addTab()}
//}

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:3}D{i:4}D{i:5}D{i:1}D{i:6}D{i:8}
}
##^##*/
