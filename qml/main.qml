import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts


ApplicationWindow {
    visible: true
    width: 600
    height: 500
    title: "Beam Catcher"
    id: "main_window"

    Row {
        padding: 0
        spacing: 2
        height: 32

        RowButton {
            id: "btn_camera_control_section"
            source: "./icons/camera.svg"
            onClicked: {
                txt_main.text = "Camera Control Section!"
            }
            tooltip: qsTr("Camera Control Section")
        }

        RowButton {
            id: "btn_start"
            source: "./icons/play.svg"
            onClicked: {
                txt_main.text = "Start!"
            }
            tooltip: qsTr("Start")
        }

        RowButton {
            id: "btn_pause"
            source: "./icons/pause.svg"
            onClicked: {
                txt_main.text = "Pause!"
            }
            tooltip: qsTr("Pause")
        }

        RowButton {
            id: "btn_stop"
            source: "./icons/stop.svg"
            onClicked: {
                txt_main.text = "Stop!"
            }
            tooltip: qsTr("Stop")
        }

        RowButton {
            id: "btn_show_display"
            source: "./icons/display.svg"
            onClicked: {
                txt_main.text = "Show Display!"
                if (display_window.visible == true) {
                    display_window.visible = false;
                } else {
                    display_window.visible = true;
                }
            }
            tooltip: qsTr("Show Display")
        }

        RowButton {
            id: "btn_show_property_controller"
            source: "./icons/settings.svg"
            onClicked: {
                txt_main.text = "Show Property Controller!"
                if (property_controller_window.visible == true) {
                    property_controller_window.visible = false;
                } else {
                    property_controller_window.visible = true;
                }
            }
            tooltip: qsTr("Show Property Controller")
        }

        RowButton {
            id: "btn_save_image"
            source: "./icons/save.svg"
            onClicked: {
                txt_main.text = "Save Image!"
            }
            tooltip: qsTr("Save Image")
        }

        // ToolSeparator {
        //     orientation: Qt.Vertical
        // }

        Rectangle {
            height: parent.height
            width: 8
            color: "#00000000"
        }
        
        RowButton {
            id: "btn_beam_analyzing_section"
            source: "./icons/beam_analyze.svg"
            onClicked: {
                txt_main.text = "Beam Analyzing Section!"
            }
            tooltip: qsTr("Beam Analyzing Section")
        }

        RowButton {
            id: "btn_beam_finder"
            source: "./icons/beam_find.svg"
            onClicked: {
                txt_main.text = "Beam Finder!"
            }
            tooltip: qsTr("Beam Finder")
        }

        RowButton {
            id: "btn_beam_profiler"
            source: "./icons/beam_profiler.svg"
            onClicked: {
                txt_main.text = "Beam Profiler!"
            }
            tooltip: qsTr("Beam Profiler")
        }

        RowButton {
            id: "btn_save_processed_image"
            source: "./icons/save.svg"
            onClicked: {
                txt_main.text = "Save Processed Image!"
            }
            tooltip: qsTr("Save Processed Image")
        }
    }

    Row {
        property var button_height: 24
        padding: 16
        spacing: 8
        anchors.bottom: parent.bottom
        Button {
            id: "btn_counter_clockwise"
            text: '-'
            width: parent.button_height
            height: parent.button_height
            rotation: 45
            onClicked: {
                btn_rotation.rotation -= 5
                txt_main.rotation -= 5
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
        id: "txt_main"
        anchors.centerIn: parent
        text: "Hello, Beam!"
        font.pixelSize: 24
    }

    DisplayWindow {
        id: display_window
        visible: false
    }

    PropertyControllerWindow {
        id: property_controller_window
        visible: true
    }

    TableViewExampleTwo {
        // visible: false
    }



}