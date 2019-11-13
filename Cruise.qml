import QtQuick 2.11

Item {
    id: cruise

    property real speed: 100
    property real battery: 0.5

    width: 200
    height: 200

    Text {
        id: speed_txt

        anchors.horizontalCenter: cruise.horizontalCenter
        anchors.top: cruise.top
        anchors.topMargin: 8

        text: Math.ceil(speed)
        font.pointSize: 60
        font.bold: true
        color: "white"
    }

    Text {
        id: measure

        anchors.top: speed_txt.bottom
        anchors.horizontalCenter: cruise.horizontalCenter

        text: "Km/h"
        color: "darkgrey"
    }

    Text {
        anchors.top: measure.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: cruise.horizontalCenter
        text: (cruise.battery * 100).toFixed(0)  + "%"
        color: "white"
        font.pointSize: 30
    }
}
