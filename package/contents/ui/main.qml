import QtQuick
import QtQuick.Layouts
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore
import org.kde.plasma.components as PlasmaComponents3
import org.kde.kirigami as Kirigami
import org.kde.plasma.extras as PlasmaExtras

PlasmoidItem {
    id: widget
    
    // Visibility
    Plasmoid.status: PlasmaCore.Types.ActiveStatus
    
    // Taskbar Representation
    compactRepresentation: Item {
        Kirigami.Icon {
            anchors.fill: parent
            anchors.margins: Kirigami.Units.smallSpacing
            source: "applications-education-language-symbolic"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: widget.expanded = !widget.expanded
        }
    }

    // Full Panel
    fullRepresentation: Item {
        Layout.preferredWidth: Kirigami.Units.gridUnit * 18
        Layout.preferredHeight: Kirigami.Units.gridUnit * 22
        Layout.minimumWidth: Layout.preferredWidth
        Layout.minimumHeight: Layout.preferredHeight

        ColumnLayout {
            anchors.fill: parent
            spacing: 0

            // Toolbar
            Toolbar {}

            // Separator Line
            Kirigami.Separator {
                Layout.fillWidth: true
                Layout.bottomMargin: Kirigami.Units.smallSpacing
            }

            // Search Box
            ColumnLayout {
                Layout.fillWidth: true
                // Add padding around the search bar so it doesn't touch the edges
                Layout.margins: Kirigami.Units.largeSpacing 
                
                Kirigami.SearchField {
                    id: searchField
                    Layout.fillWidth: true
                    placeholderText: i18n("Search...")
                    onAccepted: console.log("Searching for:", text)
                }
            }

            // Main Content
            ColumnLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.margins: Kirigami.Units.largeSpacing
                
                Item { Layout.fillHeight: true }
            }
        }
    }
}