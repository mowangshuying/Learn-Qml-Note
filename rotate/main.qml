import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("rotate")

    // 中心点旋转
    Rectangle {
        color:"red";
        x:25;
        y:25;
        width:50;
        height:50;

        rotation:30;
    }



}
