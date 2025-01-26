import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 600
    title: "Registration - Form"

    Rectangle {
        width: parent.width
        height: parent.height
        color: "white"

        Column {
            anchors.centerIn: parent
            spacing: 20

            Row {
                spacing: 15

                Text {
                    text: "First Name:"
                    font.pixelSize: 14
                    width: 100
                    horizontalAlignment: Text.AlignRight
                }

                TextField {
                    id: firstNameField
                    placeholderText: "Enter your First Name"
                    font.pixelSize: 14
                    width: 200
                }
            }

            Row {
                spacing: 15

                Text {
                    text: "Last Name:"
                    font.pixelSize: 14
                    width: 100
                    horizontalAlignment: Text.AlignRight
                }

                TextField {
                    id: lastNameField
                    placeholderText: "Enter your Last Name"
                    font.pixelSize: 14
                    width: 200
                }
            }
            Row {
                spacing: 15

                Text {
                    text: "Email:"
                    font.pixelSize: 14
                    width: 100
                    horizontalAlignment: Text.AlignRight
                }

                TextField {
                    id: emailField
                    placeholderText: "Enter your email"
                    font.pixelSize: 14
                    width: 200
                }
            }

            Row {
                spacing: 15

                Text {
                    text: "Select your gender"
                    font.pixelSize: 14
                    width: 100
                    horizontalAlignment: Text.AlignRight
                }
                ComboBox {
                    id: genderComboBox
                    width: 150
                    model: ["Male", "Female", "Other"]
                }
            }
            Row {
                spacing: 15

                Text {
                    text: "Select your Course"
                    font.pixelSize: 14
                    width: 100
                    horizontalAlignment: Text.AlignRight
                }
                ComboBox {
                    id: course
                    width: 150
                    model: ["B.Tech","M.tech","B.pharma"]
                }
            }
            Row {
                spacing: 15

                Text {
                    text: "Select your Year"
                    font.pixelSize: 14
                    width: 100
                    horizontalAlignment: Text.AlignRight
                }
                ComboBox {
                    id: year
                    width: 150
                    model: ["1", "2", "3", "4"]
                }
            }
            Button {

                text: "Submit"
                font.pixelSize: 16
                width: 120
                height: 40
                background: Rectangle {
                color: "#007BFF"
                radius: 5
            }

            onClicked: {
                console.log("Registration Details:")
                console.log("First Name: " + firstNameField.text)
               console.log("Last Name: " + lastNameField.text)
               console.log("Email: " + emailField.text)
               console.log("Gender: " + genderComboBox.currentText)
               console.log("Course: " + course.currentText)
               console.log("Year: " + year.currentText)

            }

        }

        }
    }
}

