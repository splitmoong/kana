import QtQuick
import QtQuick.Layouts
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore
import org.kde.plasma.components as PlasmaComponents3
import org.kde.kirigami as Kirigami
import org.kde.plasma.extras as PlasmaExtras

PlasmoidItem {
    id: widget
    
    //Visibility
    Plasmoid.status: PlasmaCore.Types.ActiveStatus

    //Taskbar Representation
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

    //Full Panel
    fullRepresentation: Item {
        // Standard Panel Dimensions
        Layout.preferredWidth: Kirigami.Units.gridUnit * 18
        Layout.preferredHeight: Kirigami.Units.gridUnit * 22
        Layout.minimumWidth: Layout.preferredWidth
        Layout.minimumHeight: Layout.preferredHeight

        ColumnLayout {
            anchors.fill: parent
            spacing: 0

            //Header
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

                // Configure Button (Standard "Flat" look)
                PlasmaComponents3.ToolButton {
                    icon.name: "configure"
                    display: PlasmaComponents3.AbstractButton.IconOnly
                    text: i18n("Configure")
                    
                    //Todo-Congig File
                    onClicked: plasmoid.action("configure").trigger()
                }

                // Pin Button (The feature you liked)
                PlasmaComponents3.ToolButton {
                    id: pinButton
                    checkable: true
                    checked: !plasmoid.hideOnWindowDeactivate
                    
                    //swap icon between pinned and unpinned
                    icon.name: checked ? "window-pin-decorated" : "window-pin"
                    display: PlasmaComponents3.AbstractButton.IconOnly
                    text: i18n("Keep Open")

                    onToggled: {
                        plasmoid.hideOnWindowDeactivate = !checked
                    }
                }
            }

            //Seperator Line
            Kirigami.Separator {
                Layout.fillWidth: true
                Layout.bottomMargin: Kirigami.Units.smallSpacing
            }

            //Main Content
            ColumnLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.margins: Kirigami.Units.largeSpacing

                PlasmaComponents3.Label {
                    text: "日本語の事象"
                    font.pointSize: 16
                    opacity: 0.7
                    Layout.alignment: Qt.AlignHCenter
                }
                
                Item { Layout.fillHeight: true }
            }
        }
    }
}