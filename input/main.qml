import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("input")

    TextInput   
    {
        //������֤����ֻ������11~31֮������
        //validator: IntValidator{bottom: 11; top: 31;}
        x:50;y:50;
        focus: true
    }

    // input Ĭ��û�б߿�ʹ��rectangle��Ϊ���α߿�
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
