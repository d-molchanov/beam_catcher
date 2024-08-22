import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 600
    height: 500
    title: "Beam Catcher"

    Row {
        property var button_height: 24
        padding: 16
        spacing: 8
        Button {
            id: "btn_counter_clockwise"
            text: '-'
            width: parent.button_height
            height: parent.button_height
            rotation: 45
            onClicked: {
                btn_rotation.rotation -= 5
            }
        }

        Button {
            id: "btn_rotation"
            text: '!'
            width: parent.button_height
            height: parent.button_height
            rotation: 45
            onClicked: {
                if (child_window.visible == true) {
                    child_window.visible = false;
                } else {
                    child_window.visible = true;
                }
            }
        }

        Button {
            id: "btn_clockvise"
            text: '+'
            width: parent.button_height
            height: parent.button_height
            rotation: 45
            onClicked: {
                btn_rotation.rotation += 5
            }
        }
    }

    Text {
        anchors.centerIn: parent
        text: "Hello, Beam!"
        font.pixelSize: 24
    }

    ApplicationWindow{
        id: child_window
        visible: true
        width: 300
        height: 300
        title: 'Child window'
        x: 500
    }

}