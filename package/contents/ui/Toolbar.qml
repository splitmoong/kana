import QtQuick
import QtQuick.Layouts
import org.kde.plasma.components as PlasmaComponents3
import org.kde.kirigami as Kirigami
import org.kde.plasma.extras as PlasmaExtras

RowLayout {

    Layout.fillWidth: true
    Layout.topMargin: Kirigami.Units.smallSpacing
    Layout.leftMargin: Kirigami.Units.largeSpacing
    Layout.rightMargin: Kirigami.Units.smallSpacing
    Layout.bottomMargin: Kirigami.Units.smallSpacing
    spacing: Kirigami.Units.smallSpacing

    property alias isChartMode: chartButton.checked


    // Title
    PlasmaExtras.Heading {
        level: 2
        text: "Kana"
        Layout.fillWidth: true
        elide: Text.ElideRight
    }

    // Toggle Button (Chart vs Dict)
    PlasmaComponents3.ToolButton {
        id: chartButton
        checkable: true
        icon.source: Qt.resolvedUrl("../icons/chart-icon.svg")
        text: i18n("Kana Chart")
        display: PlasmaComponents3.AbstractButton.IconOnly
    }
}
