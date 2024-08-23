import sys

from PySide6.QtWidgets import QApplication
from PySide6.QtQuick import QQuickView
from PySide6.QtCore import QUrl
from PySide6.QtQml import QQmlApplicationEngine 

app = QApplication([])
engine = QQmlApplicationEngine()
url = QUrl("view.qml")

engine.load(url)
if not engine.rootObjects():
	sys.exit(-1)
sys.exit(app.exec())