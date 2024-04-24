import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import FluentUI


FluWindow {
    width: 1360
    height: 760
    visible: true
    visibility: Window.Maximized
    title: qsTr("软件管理主窗口")
    Rectangle{
        id:leftRect
        x:0
        y:10
        width:177
        height:760
        color:"white"
        FocusScope
        {
            width:177
            height:760
            Button{
                id:myAppBtn
                x:13
                y:0
                width:143
                height:72
                anchors.topMargin: 5
                focus:false
                background: Rectangle{
                    anchors.fill: parent
                    color:myAppBtn.focus?"#E9F0F8":"white"
                    radius:0.5
                }
                icon{
                    height: 48
                    width: 48
                    cache: false
                    color: "royalblue"
                    source: 'qrc:/resources/icon/myapp.png'
                }
                text: "我的应用"
                display: AbstractButton.TextUnderIcon
                font{
                    family: "Ubuntu"
                    pixelSize: 12
                }
            }
            Button{
                id:usbDeviceBtn
                x:13
                y:72
                width:143
                height:72
                anchors.topMargin: 5
                focus:false
                background: Rectangle{
                    anchors.fill: parent
                    color:usbDeviceBtn.focus?"#E9F0F8":"white"
                    radius:0.5
                }
                icon{
                    height: 30
                    width: 30
                    cache: false
                    color: "royalblue"
                    source: 'qrc:/resources/icon/USBdevice.png'
                }
                text: "USB设备"
                display: AbstractButton.TextUnderIcon
                font{
                    family: "Ubuntu"
                    pixelSize: 12
                }
            }
            Button{
                id:sharedPrinterBtn
                x:13
                y:144
                width:143
                height:72
                anchors.topMargin: 5
                focus:false
                background: Rectangle{
                    anchors.fill: parent
                    color:sharedPrinterBtn.focus?"#E9F0F8":"white"
                    radius:0.5
                }
                icon{
                    height: 48
                    width: 48
                    cache: false
                    color: "royalblue"
                    source: 'qrc:/resources/icon/sharedprinter.png'
                }
                text: "共享打印机"
                display: AbstractButton.TextUnderIcon
                font{
                    family: "Ubuntu"
                    pixelSize: 12
                }
            }
        }
    }
    Rectangle{
        id:rightRect
        x:177
        y:0
        width:1183
        height:760
        color:"#F9FAFC"
        Rectangle{
            id:myDesktopRect
            x:10
            y:10
            width:381
            height:190
                            //border.color:'red''
                            //border.width: 1
            Rectangle{
                x:10
                y:30
                width:100
                height:85
                            //border.color: 'red'
                            //border.width: 1
                Image {
                    x:parent.width*0.1
                    y:parent.height*0.1
                    width:parent.width*0.8
                    height:parent.height*0.8
                    source: "qrc:/resources/icon/myDesktop.png"
                }
            }
            Rectangle{
                x:120
                y:30
                width:250
                height:85
                            //border.color: 'red'
                            //border.width: 1
                Text{
                    text: "我的桌面"
                    x:0
                    y:20
                    font.pointSize: 12
                    font.bold: true
                }
                Text{
                    x:0
                    y:40
                    text: "打开我的桌面"
                    font.pointSize: 12
                    color:"#808080"
                }
            }
            Rectangle{
                x:10
                y:125
                width:360
                height:50
                            //border.color: 'red'
                            //border.width: 1
                Button{
                    x:0
                    y:10
                    width: 360
                    height: 30
                    focus:false
                    background: Rectangle{
                        anchors.fill: parent
                        color: "#F1F1F1"
                    }
                    text: "打开"
                    font{
                        family: "Ubuntu"
                        pixelSize: 12
                    }
                    //修改文字的颜色
                    palette.buttonText: "blue"
                }
            }
        }
        Rectangle{
            id:myInstallAppRect
            x:401
            y:10
            width:381
            height:190
                            //border.color:'red''
                            //border.width: 1
            Rectangle{
                x:10
                y:30
                width:100
                height:85
                            //border.color: 'red'
                            //border.width: 1
                Image {
                    x:parent.width*0.1
                    y:parent.height*0.1
                    width:parent.width*0.8
                    height:parent.height*0.8
                    source: "qrc:/resources/icon/myInstalledApp.png"
                }
            }
            Rectangle{
                x:120
                y:30
                width:250
                height:85
                            //border.color: 'red'
                            //border.width: 1
                Text{
                    text: "安装应用"
                    x:0
                    y:20
                    font.pointSize: 12
                    font.bold: true
                }
                Text{
                    x:0
                    y:40
                    text: "选择应用安装包进行安装"
                    font.pointSize: 12
                    color:"#808080"
                }
            }
            Rectangle{
                x:10
                y:125
                width:360
                height:50
                            //border.color: 'red'
                            //border.width: 1
                Button{
                    x:0
                    y:10
                    width: 360
                    height: 30
                    focus:false
                    background: Rectangle{
                        anchors.fill: parent
                        color: "#F1F1F1"
                    }
                    text: "打开"
                    font{
                        family: "Ubuntu"
                        pixelSize: 12
                    }
                    //修改文字的颜色
                    palette.buttonText: "blue"
                }
            }
        }
        Rectangle{
            id:myMicrosoftEdgeRect
            x:792
            y:10
            width:381
            height:190
                            //border.color:'red''
                            //border.width: 1
            Rectangle{
                x:10
                y:30
                width:100
                height:85
                            //border.color: 'red'
                            //border.width: 1
                Image {
                    x:parent.width*0.1
                    y:parent.height*0.1
                    width:parent.width*0.8
                    height:parent.height*0.8
                    source: "qrc:/resources/icon/myMicrosoftEdge.png"
                }
            }
            Rectangle{
                x:120
                y:30
                width:250
                height:85
                            //border.color: 'red'
                            //border.width: 1
                Text{
                    text: "Microsoft Edge"
                    x:0
                    y:20
                    font.pointSize: 12
                    font.bold: true
                }
                Text{
                    x:0
                    y:40
                    text: "浏览Web"
                    font.pointSize: 12
                    color:"#808080"
                }
            }
            Rectangle{
                x:10
                y:125
                width:360
                height:50
                            //border.color: 'red'
                            //border.width: 1
                Button{
                    x:0
                    y:10
                    width: 360
                    height: 30
                    focus:false
                    background: Rectangle{
                        anchors.fill: parent
                        color: "#F1F1F1"
                    }
                    text: "打开"
                    font{
                        family: "Ubuntu"
                        pixelSize: 12
                    }
                    //修改文字的颜色
                    palette.buttonText: "blue"
                }
            }
        }
        Rectangle{
            id:myWechatRect
            x:10
            y:210
            width:381
            height:190
                            //border.color:'red''
                            //border.width: 1
            Rectangle{
                x:10
                y:30
                width:100
                height:85
                            //border.color: 'red'
                            //border.width: 1
                Image {
                    x:parent.width*0.1
                    y:parent.height*0.1
                    width:parent.width*0.8
                    height:parent.height*0.8
                    source: "qrc:/resources/icon/myWechat.png"
                }
            }
            Rectangle{
                x:120
                y:30
                width:250
                height:85
                            //border.color: 'red'
                            //border.width: 1
                Text{
                    text: "微信"
                    x:0
                    y:20
                    font.pointSize: 12
                    font.bold: true
                }
                Text{
                    x:0
                    y:40
                    text: "微信"
                    font.pointSize: 12
                    color:"#808080"
                }
            }
            Rectangle{
                x:10
                y:125
                width:360
                height:50
                            //border.color: 'red'
                            //border.width: 1
                Button{
                    x:0
                    y:10
                    width: 360
                    height: 30
                    focus:false
                    background: Rectangle{
                        anchors.fill: parent
                        color: "#F1F1F1"
                    }
                    text: "打开"
                    font{
                        family: "Ubuntu"
                        pixelSize: 12
                    }
                    //修改文字的颜色
                    palette.buttonText: "blue"
                }
            }
        }

    }
}
