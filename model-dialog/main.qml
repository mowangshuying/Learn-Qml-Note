
import QtQuick.Window 2.2
import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.3

import QtQuick 2.0
import QtQuick.Controls 2.0

Window {
    id: window
    color: "white"
    width: 400
    height: 300
    visible: true
    
    //radius: 8

    property int titleBarHeight: 32
    property bool mousePressed: false
    property var mousePos: Qt.point(0, 0)

    Rectangle {
        id: titleBar
        color: "#2e2e2e"
        height: window.titleBarHeight
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }

        MouseArea {
            id: titleBarMouseArea
            anchors.fill: parent
            cursorShape: Qt.SizeAllCursor
            onPressed: {
                window.mousePressed = true
                window.mousePos = Qt.point(mouse.x, mouse.y)
            }
            onReleased: {
                window.mousePressed = false
            }
            onPositionChanged: {
                if (window.mousePressed) {
                    var deltaX = mouse.x - window.mousePos.x
                    var deltaY = mouse.y - window.mousePos.y
                    window.x += deltaX
                    window.y += deltaY
                    window.mousePos = Qt.point(mouse.x, mouse.y)
                }
            }
        }

        Button {
            id: minimizeButton
            anchors {
                top: parent.top
                right: closeButton.left
                bottom: parent.bottom
                margins: 8
            }
            width: 24
            height: 24
            //iconSource: "qrc:/icons/minimize.png"
            onClicked: window.showMinimized()
        }

        Button {
            id: closeButton
            anchors {
                top: parent.top
                right: parent.right
                bottom: parent.bottom
                margins: 8
            }
            width: 24
            height: 24
            //iconSource: "qrc:/icons/close.png"
            onClicked: window.close()
        }
    }

    Rectangle {
        id: contentArea
        color: "transparent"
        anchors {
            top: titleBar.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
    }
}
