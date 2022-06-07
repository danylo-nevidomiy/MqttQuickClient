import QtQuick 2.0
import QtQuick.Layouts 1.1

Rectangle{
    id:root
    color:"blue"

    GridLayout {
        id: grid
        anchors.fill: parent

        rows: 3
        columns: 3

        ValueItem{
            row: 0
            column: 0
            name: "Temperature"
            topic: "temp"
        }
        IndicatorItem{
            row: 1
            column: 0
            name: "Temperature"
            topic: "temp"
        }
        ChartItem{
            row: 0
            column: 1
            name: "My new button item"
            topic: "temp"
            maxX:25
            minX:0
            maxY:25
            minY:0

        }
        SwitchNewItem{
            row: 0
            column: 2
            name: "Turn on/off Boiler"
            name_switch: "Switching"
            topic: "temp"
        }

        SwitchNewItem{
            row: 1
            column: 1
            name: "Turn on/off Boiler"
            name_switch: "Switching"
            topic: "temp"
        }

        InputItem{
            row: 2
            column: 2
            name: "Min Temperature"
            name_field: "Type value"
            topic: "temp"
        }

        InputItem{
            row: 1
            column: 2
            name: "Max Temperature"
            name_field: "Publish"
            topic: "temp"
        }


        ValueItem{
            row: 2
            column: 1
            name: "Temperature"
            topic: "temp"
        }
        SwitchNewItem{
            row: 2
            column: 0
            name: "Turn on/off Boiler"
            name_switch: "Switching"
            topic: "temp"
        }
    }
}

