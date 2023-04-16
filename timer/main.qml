import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("timer")

    Item {
        Timer {
            interval: 500;
            running: true;
            repeat: true;
            onTriggered: time.text = Date().toString();
        }

        Text {
            id: time;
            x: 50;
            y: 50;
        }
    }
}
