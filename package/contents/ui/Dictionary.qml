import QtQuick
import QtQuick.Layouts
import org.kde.plasma.components as PlasmaComponents3
import org.kde.kirigami as Kirigami

ColumnLayout {
    spacing: Kirigami.Units.largeSpacing

    // Search Bar
    Kirigami.SearchField {
        id: searchField
        Layout.fillWidth: true
        placeholderText: i18n("Search...")
        onAccepted: console.log("Searching for:", text)
    }

    // Results
    Item {
        Layout.fillWidth: true
        Layout.fillHeight: true
        
        PlasmaComponents3.Label {
            anchors.centerIn: parent
            text: "Dictionary Results"
            opacity: 0.5
        }
    }
}