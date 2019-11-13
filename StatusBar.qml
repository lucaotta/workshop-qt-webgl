import QtQuick 2.8

Item {
    id: statusBar

    Text {
        id: kilometers
        anchors.left: statusBar.left
        anchors.leftMargin: 20
        font.pointSize: 16
        color: "white"
        text: "62 km"
    }

    Text {
        id: temperature
        color: "white"
        anchors.left: kilometers.right
        anchors.leftMargin: 20
        font.pointSize: 16
        text: "23° C"
    }

    Text {
        id: date
        font.pointSize: 16
        color: "white"
        text: "24 Ott 2018"
        anchors.right: time.left
        anchors.rightMargin: 20
    }

    Text {
        id: time
        font.pointSize: 16
        anchors.right: statusBar.right
        anchors.rightMargin: 20
        color: "white"
        text: "9:30"
    }
}
