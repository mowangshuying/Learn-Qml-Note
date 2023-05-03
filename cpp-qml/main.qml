import QtQuick 2.9
import QtQuick.Window 2.2
import MyObject 1.0
import QtQuick.Controls 2.12

Window {
    id: "window"
// 冒号初始化为动态绑定
    objectName: "window"
    property int myWidth:width
    property int myObjectInt: myObj.myInt
    visible: true
    /*width: 640*/
    /*width: Screen.desktopAvailableWidth*/
    width: SCREEN_WIDTH
    height: 480
    title: qsTr("cpp-qml")

    signal qmlSig(int i, string s);

    function qmlSlot(i, s) {
        console.log("qmlSlot: i = ", i , " s = ", s)
    }

    function qmlFunc(i, s) {
        return "success";
    }

    MyRectangle {
        myInt:100
        Component.onCompleted: {
            console.log("Rectangle completed myInt = ", myInt);
        }
    }

    MyObject {
        id: "myObj"
        myInt:100
        myStr:"my obj"
        Component.onCompleted: {
            console.log("MyObject completed myInt = ", myInt, " mystr = '", myStr, "'");
        }

    }

    Button {
        x:100
        y:249
        text: "change myObj.myInt"
        onClicked: {
            myObj.myInt += 1;
            console.log("btn clicked!");
        }
    }

    Button {
        x:249;
        y:249;
        text: "call func"
        onClicked: {
            myObj.myFunc();
        }
    }

   Button {
        id: qmlEmitSignalBtn
        objectName: "qmlEmitSignalBtn"
        x:400;
        y:249;
        text: "qml emit signal"
        onClicked: {
            //myObj.myFunc();
            console.log("qml emit signal clicked");
            qmlSig(10, "zhangshang");
            //window.qmlSig(10, "zhangshang");
        }
    }

    Button {
        x:100;
        y:350;
        text: "qml emit cpp sig"
        onClicked: {
            console.log("qml emit cpp sig");
            myObj.cppSig(99, "lisi");
        }
    }

    onWidthChanged: {
        console.log("myWidth = ", myWidth);
      //  console.log("myObjectInt = ", myObj.myInt);
      //    console.log("myObjectInt = ", myObjectInt);
    }

    onMyObjectIntChanged: {
       console.log("myObjectInt = ", myObjectInt);
    }

    Component.onCompleted: {
        myWidth = 600;
        qmlSig.connect(myObj.cppSlot);
        myObj.cppSig.connect(qmlSlot);
    }

    
   //Connections {
   //     target: window
   //     function onQmlSig(i, s) {
   //         console.log("onQmlSig");
   //         myObj.cppSlot(i, s);
   //     }
   // }

   // onQmlSig(i, s) {
   //     console.log("onQmlSig");
   // }

}
