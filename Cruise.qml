import QtQuick 2.11
import QtGraphicalEffects 1.0

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

    Rectangle {
        id: filler

        anchors.fill: battery_mask

        color: "black"
        visible: false

        Rectangle {
            anchors.left: filler.left

            color: (battery > 0.2) ? "#ff00ff00" : "#ffff0000"
            height: filler.height
            width: cruise.battery * parent.width
        }

        Image {
            anchors.fill: parent

            source: "images/batteria_vuota.png"
        }
    }

    Image {
        id: battery_mask

        anchors.horizontalCenter: cruise.horizontalCenter
        anchors.top: measure.bottom
        anchors.topMargin: 20

        source: "images/batteria_maschera.png"
        visible: false
    }

    OpacityMask {
        anchors.fill: filler

        source: filler
        maskSource: battery_mask
    }
}
