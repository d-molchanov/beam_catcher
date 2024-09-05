import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
	width: 32
	height: 32

	property alias tooltip: tooltip.text
	property alias source: icon.source

	Image {
		id: "icon"
        source: parent.source
		height: parent.height * 0.5
		width: parent.width * 0.5
		anchors.centerIn: parent
	}

	ToolTip {
		id: "tooltip"
		visible: hovered
	}
}