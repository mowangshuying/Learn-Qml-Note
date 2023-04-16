import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("½¥±ä")

    gradient: Gradient{
                    GradientStop {position:0.0; color:"red";}
                    GradientStop {position:0.33; color:"red";}
                    GradientStop {position:1.0; color:"red";}
                }
}
