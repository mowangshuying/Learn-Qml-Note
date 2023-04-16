import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("edit")

    TextEdit {
        x:50;y:50;width:120;
        color:"blue";
        text:"<b>text</b>";
        focus:true;
        //border.width:1;
    }
}
