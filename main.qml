import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    id: window
    visible: true
    width: 1300
    height: 480
    title: qsTr("Dashboard")
    color: "#11121A"

    MainDashboard {
        anchors.centerIn: parent
    }
}
