import QtQuick
import QtQuick.Layouts
import org.kde.plasma.components as PlasmaComponents3

Item {
    ColumnLayout {
        anchors.centerIn: parent
        PlasmaComponents3.Label {
            text: "あ い う え お"
            font.pointSize: 20
            Layout.alignment: Qt.AlignHCenter
        }
        PlasmaComponents3.Label {
            text: "(Kana Chart Coming Soon)"
            opacity: 0.7
        }
    }
}