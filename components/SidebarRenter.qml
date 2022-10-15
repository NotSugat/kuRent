import QtQuick 2.15
import QtQuick.Controls 6.3
import QtQuick.Layouts 1.0
import "../components"

Rectangle {
    id: sidebar
    width: 200
    height: parent.height
    anchors {
        left: parent.left
        top: statusBar.bottom
        leftMargin: 10

    }
//    color: "blue"


    ColumnLayout {
        id: sidebarIcons
        width: sidebar.width

        anchors {
            top: parent.top
            topMargin: 150
        }

        spacing: 20


        Rectangle{
            id: homeBg

            Layout.maximumHeight: 30
            Layout.preferredHeight: 30
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20

            }
            radius: 20
            color: mouse.hovered? "#e8e4e3" : "white"
            Image{
                id: home
                source: "../images/dashboard.png"
                width: 20
                fillMode: Image.PreserveAspectFit
                anchors{
                    top:parent.top
                    left:parent.left
                    leftMargin: 20
                    verticalCenter: homeBg.verticalCenter

                }

                verticalAlignment: Image.AlignVCenter


            }

            Text {
                id: homeText
                text: "Dashboard"
                height:parent.height
                anchors{
                    top:parent.top
                    left: home.right
                    leftMargin: 5
                }
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter

            }
            HoverHandler {
                   id: mouse
                   acceptedDevices: PointerDevice.Mouse
                   cursorShape: Qt.PointingHandCursor
            }
        }
        // user
        Rectangle{
            id: userBg

            Layout.maximumHeight: 30
            Layout.preferredHeight: 30
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20

            }
            radius: 20
            color: mouseUser.hovered? "#e8e4e3" : "white"


            Image{
                id: user
                source: "../images/user.png"
                width: 20
                fillMode: Image.PreserveAspectFit
                anchors{
                    top:parent.top
                    left:parent.left
                    leftMargin: 20
                    verticalCenter: userBg.verticalCenter

                }

                verticalAlignment: Image.AlignVCenter




            }
            Text {
                id: userText
                text: "Account"
                height:parent.height
                anchors{
                    top:parent.top
                    left: user.right
                    leftMargin: 5
                }
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter

            }
            HoverHandler {
                   id: mouseUser
                   acceptedDevices: PointerDevice.Mouse
                   cursorShape: Qt.PointingHandCursor
            }


        }

        // Booking
        Rectangle{
            id: bookingBg

            Layout.maximumHeight: 30
            Layout.preferredHeight: 30
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20

            }
            radius: 20
            color: mouseEmail.hovered? "#e8e4e3" : "white"
            Image{
                id: booking
                source: "../images/email.png"
                width: 20
                fillMode: Image.PreserveAspectFit
                anchors{
                    top:parent.top
                    left:parent.left
                    leftMargin: 20
                    verticalCenter: bookingBg.verticalCenter

                }

                verticalAlignment: Image.AlignVCenter


                Text {
                    id: bookingText
                    text: "My Booking"
                    height:parent.height
                    anchors{
                        top:parent.top
                        left: booking.right
                        leftMargin: 5
                    }
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                }

            }


            HoverHandler {
                   id: mouseEmail
                   acceptedDevices: PointerDevice.Mouse
                   cursorShape: Qt.PointingHandCursor
            }
        }

        // Setting
        Rectangle{
            id: settingBg

            Layout.maximumHeight: 30
            Layout.preferredHeight: 30
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20

            }
            radius: 20
            color: mouseSetting.hovered? "#e8e4e3" : "white"

            Image{
                id: setting
                source: "../images/report.png"
                width: 20
                fillMode: Image.PreserveAspectFit
                anchors{
                    top:parent.top
                    left:parent.left
                    leftMargin: 20
                    verticalCenter: settingBg.verticalCenter

                }

                verticalAlignment: Image.AlignVCenter



            }

            Text {
                id: settingText
                text: "Setting"
                height:parent.height
                anchors{
                    top:parent.top
                    left: setting.right
                    leftMargin: 5
                }
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter

            }

            HoverHandler {
                   id: mouseSetting
                   acceptedDevices: PointerDevice.Mouse
                   cursorShape: Qt.PointingHandCursor
            }


        }
        CustomButton {
            id: button
            anchors {
                top:setting.bottom
                horizontalCenter: parent.horizontalCenter

            }

            Layout.preferredHeight: 30
            Layout.preferredWidth: 100
            title: "Book Now"
        }




}
}
