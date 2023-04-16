import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("behavior-animation")

    Rectangle {
        id:rect;
        x:50;y:50;
        width:100;
        height:100;

        color:"red";

        Behavior on x { PropertyAnimation {duration:500;} }
        Behavior on y { PropertyAnimation {duration:500;} }

    }

    MouseArea {
        anchors.fill:parent
        onClicked:{
            rect.x = mouse.x;
            rect.y = mouse.y;
        }
    }
}
