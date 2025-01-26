import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "Click Counter"

    property int clickCount: 0 // A property to store the count

    Column {
        anchors.centerIn: parent
        spacing: 10

        Text {
            text: "Clicks: " + clickCount
            font.pixelSize: 24
        }

        Button {
            text: "Click Me"
            onClicked: clickCount++
        }
    }
}

