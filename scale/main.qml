import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("scale")

    Rectangle {
        x:50;y:50;
        color:"green";
        width:25;height:25;
    }

    Rectangle {
        color:"red";
        x:50;y:100;
        width:25;height:25;
        scale:1.6;
        transformOrigin:"TopLeft";
    }
}
