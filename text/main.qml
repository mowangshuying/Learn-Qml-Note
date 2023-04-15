import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("text")

    Text {
        x:50;y:50;
        text: "hello,world";
        font.family:"Helvetica";
        font.pointSize:18;
        color:"red";
    }

    Text {
        x:50;y:150;
        text: "<b>Hello</b> <i>world</i>!";
    }
}
