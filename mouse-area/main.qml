import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("mouse area")

    // 
    Rectangle {
        x:50;y:50;width:100;height:20;
        color:"green";

        MouseArea 
        {
            anchors.fill:parent;
            //suc
            //onClicked: { parent.color = 'red' }
            
            // failed
            //onClicked: { 
            //    if (parent.color == 'red') {
            //        parent.color = 'green'
            //    } else {
            //        parent.color = 'red'
            //    }
            //}

            // 接受鼠标左键与右键
            acceptedButtons: Qt.LeftButton | Qt.RightButton;
            onClicked:
            {
                console.log("clicked!");
                if (mouse.button == Qt.RightButton)
                {
                    parent.color = 'blue';
                }
                else if (mouse.button == Qt.LeftButton)
                {
                    parent.color = 'green';
                }
                else
                {
                    parent.color='red';
                }
            }

        }
    }
}
