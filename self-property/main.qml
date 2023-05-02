import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: myRect
        anchors.fill: parent
        color: "red"
        property int myInt: 5
        property real myReal: 5.5

        /* rect 加载完成时候打印属性 */
        Component.onCompleted: {
            console.log("Rectangle completed");
            console.log("myInt:", myInt, "myReal:", myReal)
        }

        Component.onDestruction: {
            console.log("Rectangle destruct");
        }
        
    }
}
