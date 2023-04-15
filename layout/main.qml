import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // 布局管理水平布局
    Column {
        spacing:2;
        Row {
             spacing:2;
             Rectangle {color:"red"; width:50; height:50;}
             Rectangle {color:"red"; width:50; height:50;}
             Rectangle {color:"red"; width:50; height:50;}
        }

       Row {
             spacing:2;
             Rectangle {color:"green"; width:50; height:50;}
             Rectangle {color:"green"; width:50; height:50;}
             Rectangle {color:"green"; width:50; height:50;}
        }

       Row {
             spacing:2;
             Rectangle {color:"blue"; width:50; height:50;}
             Rectangle {color:"blue"; width:50; height:50;}
             Rectangle {color:"blue"; width:50; height:50;}
        }
        
    }
}
