import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("rectangle")

    Rectangle {
        x:50;y:50;
        width:100;
        height:100;
        color:"red";
        border.color:"black";
        border.width:5;
        radius:10;
    }
}
