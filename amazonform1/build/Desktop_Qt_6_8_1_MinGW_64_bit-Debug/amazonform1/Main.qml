import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 580
    title: "Amazon-form page"

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#f4f4f4"

        // Logo Section
        Image {
            source:  "amazonform/Amazon-Logo.png"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            width: 150
            height: 50
            anchors.topMargin: 20
        }

        // Main Form Section
        Column {
            anchors.centerIn: parent
            spacing: 10

            // Email Input Field
            TextField {
                id: emailField
                placeholderText: "Enter your email"
                width: 300
                font.pixelSize: 15
            }

            // Password Input Field
            TextField {
                id: passwords
                placeholderText: "Enter your password"
                width: 300
                font.pixelSize: 15
            }

            // Forgot Password Link
            Text {
                text: "Forgot your password?"
                color: "lightblue"
                font.pixelSize: 14
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("Redirecting to password reset....")
                    }
                }
            }

            // Sign-In Button
            Button {
                text: "Sign-In"
                width: 300
                font.pixelSize: 16
                onClicked: {
                    console.log("Welcome to your Amazon account")
                }
            }

            // Terms and Conditions Text
            Text {
                text: "By continuing, you agree to Amazon's Conditions of Use and Privacy Notice."
                font.pixelSize: 15
                color: "#777"
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.Wrap
                width: 300
            }

            // Keep me signed in Section
            Row {
                spacing: 10

                Text {
                    text: "Keep me signed in"
                    font.pixelSize: 14
                    color: "#333"
                }
                Text {
                    text: "Details"
                    color: "#0066c0"
                    font.pixelSize: 12
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            console.log("Show details for sign-in option")
                        }
                    }
                }
            }

            // New Account Section
            Row {
                spacing: 10
                Text {
                    text: "New to Amazon?"
                    font.pixelSize: 14
                    color: "#333"
                }
                Button {
                    text: "Create your Amazon account"
                    font.pixelSize: 14
                    onClicked: {
                        console.log("Redirecting to account creation page....")
                    }
                }
            }
        }
    }
}


