import QtQuick 2.15
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import "qrc:/components/signupUi"
import "qrc:/components/adminUi"

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Sign Up be a Member")

    //mainWindow
    Rectangle{
        id: mainWindow
        width: parent.width
        height: parent.height
        anchors{
            left: parent.left
            right: parent.right
            top: parent.top
            bottom: parent.bottom
            leftMargin: parent.width / 4
            rightMargin: parent.width / 4

        }

        //Sign Up navbar
        Rectangle{
            id: signUp
            anchors{
                left:mainWindow.left
                right: mainWindow.right
                top: mainWindow.top
                topMargin: 30


            }


            width:parent.width
            height: parent.height / 12



            TextField{
                id: signUpField
                width: parent.width
                height: parent.height
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                text: qsTr("Sign Up")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.pointSize: 20
                color: "Purple"

//                background: Rectangle{
//                    id:borderBottom
//                    width: parent.width
//                    height: 2
//                    anchors.bottom: parent.bottom
//                    color: "purple"
//                    //                    anchors.centerIn: parent


//                }
            }
        }

        //first name and last name component
        //label
        RowLayout{
            id: labelFullName
            anchors{
                top: signUp.bottom


            }
            width: parent.width
            height: parent.height / 20

            TextField{
                id: labelFirstName
                text: "First Name"
                height:parent.height
                width:  parent.width /2.5
                font.pointSize: 20
                verticalAlignment: Text.AlignVCenter



            }
            TextField{
                id: labelLastName
                text: "Last Name"
                height:parent.height
                width:  parent.width /2.5
                font.pointSize: 20
                anchors.left: labelFirstName.right
                anchors.leftMargin: 70
                verticalAlignment: Text.AlignVCenter

                background: Rectangle{
                    id: borderBtn
                    width: parent.width
                    height: 2
                    anchors.bottom: parent.bottom
                    color: "purple"
                }



            }
        }
        RowLayout {
    id: layout
    anchors.fill: parent
    spacing: 6
    Rectangle {
        color: 'teal'
        Layout.fillWidth: true
        Layout.minimumWidth: 50
        Layout.preferredWidth: 100
        Layout.maximumWidth: 300
        Layout.minimumHeight: 150
        Text {
            anchors.centerIn: parent
            text: parent.width + 'x' + parent.height
        }
    }
    Rectangle {
        color: 'plum'
        Layout.fillWidth: true
        Layout.minimumWidth: 100
        Layout.preferredWidth: 200
        Layout.preferredHeight: 100
        Text {
            anchors.centerIn: parent
            text: parent.width + 'x' + parent.height
        }
    }
}
        //input field
        Rectangle{
            id: fullName
            y: 104
            anchors{
                top: signUp.bottom
                left: parent.left
                right: parent.right
                topMargin: 10
            }
            width: parent.width
            height: parent.height / 20
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            TextField{
                id:firstName
                anchors{
                    top: labelFullName.top
                    left: labelFullName.left

                }
                placeholderText: "First Name"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                width: parent.width / 2
                height: parent.height
            }

            Rectangle{
                id: whiteSpace
                anchors{
                    top:parent.top
                    centerIn: parent
                    bottom: parent.bottom
                }

                width: parent.width / 5


            }



            TextField{
                id: lastName
                anchors{
                    top: parent.top
                    right: parent.right

                }
                placeholderText: "Last Name"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                width: parent.width / 2
                height: parent.height
            }



        }












    // end of mainWindow
    }
}




