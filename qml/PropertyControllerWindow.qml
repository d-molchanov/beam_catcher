import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import Qt.labs.qmlmodels

ApplicationWindow{
    id: root
    // property var text_color: String(root.palette.text)
    visible: true
    width: 800
    height: 800
    title: 'Property Controller'
    x: 700

    ColumnLayout {
        anchors.fill: parent
    	Label {
    		text: "Camera Info"
    		// color: root.text_color
    	}

        Label {
            text: "VHV delegate: " + String(Object.keys(verticalHeader.delegate))
            // text: "VHV delegate: " + String(verticalHeader.delegate.objectName)
        }

        Label {
            text: "Object name: " + String(verticalHeader.constructor.name)
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            // width: 300
            // height: 300
            // The background color will show through the cell
            // spacing, and therefore become the grid line color.
            color: Qt.styleHints.appearance === Qt.Light ? palette.mid : palette.midlight

            // HorizontalHeaderView {
            //     id: horizontalHeader
            //     anchors.left: tableView.left
            //     anchors.top: parent.top
            //     syncView: tableView
            //     clip: true
            // }

            VerticalHeaderView {
                id: verticalHeader
                anchors.top: tableView.top
                anchors.left: parent.left
                model: ["Type:", "Name:", "Matrix Shape:", "Pixel Size:"]
                syncView: tableView
                clip: true

                // delegate: Label {
                //     text: modelData
                //     font.bold: true
                //     anchors.left: parent.left
                // }
            }

            TableView {
                id: tableView
                anchors.left: verticalHeader.right
                anchors.top: parent.top
                // anchors.top: horizontalHeader.bottom
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                clip: true

                columnSpacing: 1
                rowSpacing: 1

                model: TableModel {
                    TableModelColumn { display: "name" }
                    TableModelColumn { display: "color" }

                    rows: [
                        {
                            "name": "cat",
                            "color": "black"
                        },
                        {
                            "name": "dog",
                            "color": "brown"
                        },
                        {
                            "name": "bird",
                            "color": "white"
                        }
                    ]
                }

                delegate: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 20
                    color: palette.base
                    Label {
                        text: display
                    }
                }
            }
        }
        // HorizontalHeaderView {
        //     id: horizontalHeader
        //     // Layout.alignment: Qt.AlignLeft 
        //     Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
        //     syncView: tableView
        //     clip: true
        // }
        // Rectangle {
            

        //     Layout.fillHeight: true
        //     Layout.fillWidth: true
        //     Layout.margins: 50
        //     Layout.alignment: Qt.AlignRight
        //     // width: 200
        //     border.color: "#aaaaaaaa"
        //     border.width: 5
        //     color: "#00000000"
        //     TableView {
        //         id: tableView
        //         anchors.fill: parent
        //         width: 200
        //         height: 200
        //         // Layout.alignment: Qt.AlignCenter
        //         columnSpacing: 1
        //         rowSpacing: 1
        //         boundsBehavior: Flickable.StopAtBounds

        //         model: TableModel {
        //             TableModelColumn { display: "checked" }
        //             TableModelColumn { display: "amount" }
        //             TableModelColumn { display: "fruitType" }
        //             TableModelColumn { display: "fruitName" }
        //             TableModelColumn { display: "fruitPrice" }

        //             // Each row is one type of fruit that can be ordered
        //             rows: [
        //                 {
        //                     // Each property is one cell/column.
        //                     checked: false,
        //                     amount: 1,
        //                     fruitType: "Apple",
        //                     fruitName: "Granny Smith",
        //                     fruitPrice: 1.50
        //                 },
        //                 {
        //                     checked: true,
        //                     amount: 4,
        //                     fruitType: "Orange",
        //                     fruitName: "Navel",
        //                     fruitPrice: 2.50
        //                 },
        //                 {
        //                     checked: false,
        //                     amount: 1,
        //                     fruitType: "Banana",
        //                     fruitName: "Cavendish",
        //                     fruitPrice: 3.50
        //                 }
        //             ]
        //         }
        //         delegate:  TextInput {
        //             text: model.display
        //             padding: 12
        //             selectByMouse: true

        //             onAccepted: model.display = text
        //             Rectangle {
        //                 anchors.fill: parent
        //                 color: "#efefef"
        //                 z: -1
        //             }
        //         }
        //     }
        // }
    }
}