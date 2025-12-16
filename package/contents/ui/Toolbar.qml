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


    // Title
    PlasmaExtras.Heading {
        level: 2
        text: "Kana"
        Layout.fillWidth: true
        elide: Text.ElideRight
    }
}
