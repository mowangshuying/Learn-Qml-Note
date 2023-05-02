import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    /*width: 640*/
    /*width: Screen.desktopAvailableWidth*/
    width: SCREEN_WIDTH
    height: 480
    title: qsTr("cpp-qml")

    MyRectangle {
        myInt:100

        Component.onCompleted: {
            console.log("Rectangle completed myInt = ", myInt);
        }
    }

}
