import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("input")

    TextInput   
    {
        //整型验证器，只能输入11~31之间数字
        //validator: IntValidator{bottom: 11; top: 31;}
        x:50;y:50;
        focus: true
    }

    // input 默认没有边框，使用rectangle作为矩形边框
    Rectangle 
    {
        x:50;y:100;width:100;height:24;
        color:"yellow";
        border.color:"grey";
        TextInput 
        {
            anchors.fill: parent;
            anchors.margins: 2
            font.pointSize: 15
            focus: true
        }
    }

}
