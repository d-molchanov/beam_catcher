import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import Qt.labs.qmlmodels

ApplicationWindow{
    id: root
    property var text_color: String(root.palette.text)
    visible: true
    width: 400
    height: 400
    title: 'Property Controller'
    x: 700

    ColumnLayout {
        anchors.fill: parent
    	Text {
    		text: "Camera Info"
    		color: root.text_color
    	}

        Rectangle {
            color: "#ffffff"
            height: 100
            Layout.fillWidth: true
        }


        HorizontalHeaderView {
            id: horizontalHeader
            // Layout.alignment: Qt.AlignLeft 
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            syncView: tableView
            clip: true
        }
        Rectangle {
            

            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.margins: 50
            Layout.alignment: Qt.AlignRight
            // width: 200
            border.color: "#aaaaaaaa"
            border.width: 5
            color: "#00000000"
            TableView {
                id: tableView
                anchors.fill: parent
                width: 200
                height: 200
                // Layout.alignment: Qt.AlignCenter
                columnSpacing: 1
                rowSpacing: 1
                boundsBehavior: Flickable.StopAtBounds

                model: TableModel {
                    TableModelColumn { display: "checked" }
                    TableModelColumn { display: "amount" }
                    TableModelColumn { display: "fruitType" }
                    TableModelColumn { display: "fruitName" }
                    TableModelColumn { display: "fruitPrice" }

                    // Each row is one type of fruit that can be ordered
                    rows: [
                        {
                            // Each property is one cell/column.
                            checked: false,
                            amount: 1,
                            fruitType: "Apple",
                            fruitName: "Granny Smith",
                            fruitPrice: 1.50
                        },
                        {
                            checked: true,
                            amount: 4,
                            fruitType: "Orange",
                            fruitName: "Navel",
                            fruitPrice: 2.50
                        },
                        {
                            checked: false,
                            amount: 1,
                            fruitType: "Banana",
                            fruitName: "Cavendish",
                            fruitPrice: 3.50
                        }
                    ]
                }
                delegate:  TextInput {
                    text: model.display
                    padding: 12
                    selectByMouse: true

                    onAccepted: model.display = text
                    Rectangle {
                        anchors.fill: parent
                        color: "#efefef"
                        z: -1
                    }
                }
            }
        }
    }
}