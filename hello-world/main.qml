import QtQuick 2.9
import QtQuick.Window 2.2

Window 
{
    visible: true
    width: 640
    height: 480
    title: qsTr("hello-world")

    //Text {text:"hello,world"}
    Text 
    {
        text:"<h2>hello-world</h2>"
        //color: "darkgreen"
        color: "#002288"
        x:100
        y:100
    }
}
