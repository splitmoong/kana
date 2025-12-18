import QtQuick
import QtQuick.Layouts
import org.kde.plasma.components as PlasmaComponents3
import org.kde.kirigami as Kirigami
import org.kde.plasma.extras as PlasmaExtras

ColumnLayout {
    Layout.fillWidth: true
    Layout.topMargin: Kirigami.Units.smallSpacing
    Layout.leftMargin: Kirigami.Units.largeSpacing
    Layout.rightMargin: Kirigami.Units.smallSpacing
    Layout.bottomMargin: Kirigami.Units.smallSpacing
    spacing: Kirigami.Units.smallSpacing

    property alias currentIndex: tabBar.currentIndex

    // Title Row
    RowLayout {
        Layout.fillWidth: true
        PlasmaExtras.Heading {
            level: 2
            text: "Kana"
            Layout.fillWidth: true
            elide: Text.ElideRight
        }
    }

    // Tabs
    PlasmaComponents3.TabBar {
        id: tabBar
        Layout.fillWidth: true
        
        PlasmaComponents3.TabButton {
            text: i18n("Dictionary")
        }
        
        PlasmaComponents3.TabButton {
            text: i18n("Kana Chart")
        }

    }
}