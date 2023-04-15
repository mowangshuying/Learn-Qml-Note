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
        x:50;y:100;
        text: "<b>Hello</b> <i>world</i>!";
    }

    Text {
        x:50;y:150;width:100;
        elide:Text.ElideRight;
        // 中文会乱码
        // text:qsTr("文字超出部分从右边开始省略");
        text:qsTr("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbccc");
    }

    Text {
        x:50;y:200;
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text: "center"
    }

    Text {
        x:300;y:50;
        text:"the baidu website is at <a href=\"https://www.baidu.com/\">https://www.baidu.com/</a>";
    }
}
