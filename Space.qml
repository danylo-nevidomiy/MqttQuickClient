import QtQuick 2.0
import QtQuick.Layouts 1.1


Item {
    id:root
    property color color: rect.color

    Rectangle{
        anchors.fill: parent
        color:root.color

        GridLayout {
            id: grid
            anchors.fill: parent

            rows: 3
            columns: 3

            ValueItem{
                row: 0
                column: 0
                name: "My new value item"
                topic: "topic"
            }
            IndicatorItem{
                row: 1
                column: 0
                name: "My new indicator item"
                topic: "topic"
            }
            SwitchNewItem{
                row: 0
                column: 2
                name: "My new switch item on (0;0)"
                topic: "topic"
            }

            SwitchNewItem{
                row: 1
                column: 1
                name: "My new SwitchName2 item"
                topic: "topic"
            }

            InputItem{
                row: 2
                column: 2
                name: "My another Input item"
                topic: "topic"
            }

            InputItem{
                row: 1
                column: 2
                name: "My new Input item"
                topic: "topic"
            }


            ValueItem{
                row: 2
                column: 1
                name: "My new value item"
                topic: "topic"
            }
            SwitchNewItem{
                row: 2
                column: 0
                name: "My new switch item"
                topic: "topic"
            }
        }
        }
    }

