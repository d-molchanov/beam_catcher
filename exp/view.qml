import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
// Rectangle {
//     width: 400
//     height: 400
//     color: "green"

//     Text {
//         text: "Hello World"
//         anchors.centerIn: parent
//     }
// }

ApplicationWindow {
    width: 640
    height: 640
    visible: true
    title: qsTr("QML Button Review")
    Button {
        id: testButton
        anchors.centerIn: parent
        text: qsTr("testButton")
        contentItem: Text {
            text: testButton.text
            color: "#ffffff"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 10
            font.bold: true
        }
        background: Rectangle {
            property var normalColor: "#005291"
            property var hoveredColor: "#4587ba"
            property var pressedColor: "#002948"
            implicitWidth: 100
            implicitHeight: 50
            color: testButton.pressed ? pressedColor :
                   testButton.hovered ? hoveredColor :
                                        normalColor
        }
    }

    Rectangle {
        id: rect
        anchors.bottom: parent.bottom
        width: 64
        height: 64
        border.width: 2
        border.color: "#ff0000"
        color: "transparent"
    }
}