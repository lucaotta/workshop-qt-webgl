import QtQuick 2.11

Row {
    spacing: 10
    Image {
        source: "images/Area_Min.png"

        Text {
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter

            text: "134"
            color: "white"
            font.pointSize: 22
            font.bold: true
        }
    }
    Image {
        source: "images/Area_Km.png"

        Text {
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter

            text: "1345"
            color: "white"
            font.pointSize: 22
            font.bold: true
        }
    }
    Image {
        source: "images/Area_Avg.png"

        Text {
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter

            text: "38"
            color: "white"
            font.pointSize: 22
            font.bold: true
        }
    }
    Image {
        source: "images/Area_wh.png"

        Text {
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter

            text: "458"
            color: "white"
            font.pointSize: 22
            font.bold: true
        }
    }
}
