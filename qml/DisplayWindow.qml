import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

ApplicationWindow{
    id: display_window
    property var text_color: String(display_window.palette.text)
    visible: true
    width: 300
    height: 300
    title: 'Display'
    x: 500
    header: RowLayout {
        // anchors.fill: parent

        spacing: 4
        Text {

            // Layout.Alignment: Qt.AlignVCenter
            Layout.leftMargin: 4
            text: "Colormap: "
            color: display_window.text_color
        }
        ComboBox {
            model: ListModel {
                id: "model"
                ListElement {text: "None"}
                ListElement {text: "CM01"}
                ListElement {text: "CM02"}
                ListElement {text: "CM03"}
            }
        }
        Rectangle {
            Layout.fillWidth: true
        }
    }
    Rectangle{
        anchors.fill: parent
        border.color: "#aaaaaaaa"
        border.width: 1
        color: "#00000000"
        anchors.margins: 4
        Image {
        }

    }
    footer: RowLayout {
        spacing: 16

        Text {
            Layout.leftMargin: 4
            text: "FPS (Actual):"
            Layout.alignment: Qt.AlignLeft
            color: display_window.text_color

            // anchors.left: parent.left
            // Layout.fillWidth: false
        }
        Text {
            text: "Frames:"
            // anchors.left: parent.center
            color: display_window.text_color

            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: false
        }
        Text {
            color: display_window.text_color
            
            // anchors.left: parent.right
            text: "Errors:"
            Layout.alignment: Qt.AlignRight
        }
        Rectangle {
            Layout.fillWidth: true
        }
    }
}