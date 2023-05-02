import QtQuick 2.9
import QtQuick.Window 2.2
import MyObject 1.0

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

    MyObject {
        myInt:100
        myStr:"my obj"

         Component.onCompleted: {
            console.log("MyObject completed myInt = ", myInt, " mystr = '", myStr, "'");
        }

    }

}
