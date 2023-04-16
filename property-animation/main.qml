import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("propery-animation")

    Rectangle {
        x:50;y:50;width:100;height:100;
        color:"red";

        PropertyAnimation on x {to: 100; duration: 1000; loops: Animation.Infinite}
        PropertyAnimation on y {to: 100; duration: 1000; loops: Animation.Infinite}
    }
}
