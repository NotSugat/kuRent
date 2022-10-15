import QtQuick
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "components"


Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Owner Window")



  StatusBar {
      id: statusBar
  }

  SidebarRenter {
      id: sidebar
  }



  Rectangle {
      id: content
      property color bgColor: "#fcfcfc"

      anchors {
          top: statusBar.bottom
          left: sidebar.right
          right: parent.right
          bottom: parent.bottom


      }
      color: content.bgColor

      Rectangle {
          id: div
          width: 1000
          height: 300
          anchors{
              centerIn: parent
          }
          color: "transparent"

          CardImproved {
              id: cardImproved
              circleColor: "#3d517e"
              hoverColor: "#4dbca1"
              rectangleColor: "#34495e"
              title: "Total Booking"
              noOfItem: "20"
              anchors {
                  top:parent.top
                  left: parent.left
                  leftMargin: 100
                  topMargin: 50
              }
          }

          CardImproved {
              id: cardImproved1
              circleColor: "#446e48"
              hoverColor: "#34495e"
              rectangleColor: "#4dbca1"
              title: "Total Spend"
              noOfItem: "0"
              anchors {
                  top:parent.top
                  left: cardImproved.right
                  leftMargin: 100
                  topMargin: 50
              }

          }
      }







  }


}


