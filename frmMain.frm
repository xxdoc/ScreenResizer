VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H00404040&
   Caption         =   "Screen Resizer by Ricardo de Roode v1.0"
   ClientHeight    =   6435
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8790
   BeginProperty Font 
      Name            =   "Consolas"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   429
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   586
   StartUpPosition =   3  'Windows Default
   Begin Project1.uToolTip uttHelp 
      Height          =   420
      Left            =   4710
      TabIndex        =   10
      Top             =   330
      Visible         =   0   'False
      Width           =   780
      _extentx        =   79
      _extenty        =   53
   End
   Begin Project1.uButton ubtnScanMonitors 
      Height          =   690
      Left            =   135
      TabIndex        =   2
      Top             =   135
      Width           =   1830
      _extentx        =   3228
      _extenty        =   1217
      backgroundcolor =   33023
      forecolor       =   16777215
      mouseoverbackgroundcolor=   8438015
      focuscolor      =   0
      backgroundcolordisabled=   12632256
      bordercolordisabled=   0
      forecolordisabled=   0
      mouseoverbackgroundcolordisabled=   12632256
      captionbordercolordisabled=   0
      focuscolordisabled=   0
      focusvisible    =   0   'False
      caption         =   "Scan Monitors"
      border          =   0   'False
      borderanimation =   0
      font            =   "frmMain.frx":0000
   End
   Begin Project1.uFrame ufrmSavedSettings 
      Height          =   6270
      Index           =   0
      Left            =   5505
      TabIndex        =   0
      Top             =   60
      Width           =   3165
      _extentx        =   5583
      _extenty        =   11060
      backgroundcolor =   4210752
      forecolor       =   16777215
      caption         =   "Saved Settings"
      font            =   "frmMain.frx":0028
      Begin Project1.uListBox ulstSavedMonitors 
         Height          =   3705
         Left            =   135
         TabIndex        =   1
         Top             =   930
         Width           =   2895
         _extentx        =   5106
         _extenty        =   6535
         backgroundcolor =   33023
         font            =   "frmMain.frx":0050
         forecolor       =   16777215
         text            =   ""
         selectionbackgroundcolor=   8438015
         selectionbordercolor=   8438015
         selectionforecolor=   16777215
         itemheight      =   49
      End
      Begin Project1.uButton ubtnSaveCurrent 
         Height          =   555
         Left            =   135
         TabIndex        =   11
         Top             =   255
         Width           =   2895
         _extentx        =   5106
         _extenty        =   979
         backgroundcolor =   33023
         forecolor       =   16777215
         mouseoverbackgroundcolor=   8438015
         focuscolor      =   0
         backgroundcolordisabled=   12632256
         bordercolordisabled=   0
         forecolordisabled=   0
         captionbordercolordisabled=   0
         focuscolordisabled=   0
         focusvisible    =   0   'False
         caption         =   "Save Current Monitor Setup"
         border          =   0   'False
         borderanimation =   0
         font            =   "frmMain.frx":0078
         captionoffsettop=   -1
      End
      Begin Project1.uButton ubtnSetSavedResolution 
         Height          =   555
         Left            =   720
         TabIndex        =   15
         Top             =   5565
         Width           =   2310
         _extentx        =   4075
         _extenty        =   979
         backgroundcolor =   33023
         forecolor       =   16777215
         mouseoverbackgroundcolor=   8438015
         focuscolor      =   0
         backgroundcolordisabled=   12632256
         bordercolordisabled=   0
         forecolordisabled=   0
         mouseoverbackgroundcolordisabled=   12632256
         captionbordercolordisabled=   0
         focuscolordisabled=   0
         focusvisible    =   0   'False
         caption         =   "Set Resolution"
         border          =   0   'False
         borderanimation =   0
         font            =   "frmMain.frx":00A0
      End
      Begin Project1.uButton ubntDeleteSave 
         Height          =   555
         Left            =   135
         TabIndex        =   16
         Top             =   5565
         Width           =   465
         _extentx        =   820
         _extenty        =   979
         backgroundcolor =   33023
         forecolor       =   16777215
         mouseoverbackgroundcolor=   8438015
         focuscolor      =   0
         backgroundcolordisabled=   12632256
         bordercolordisabled=   0
         forecolordisabled=   0
         mouseoverbackgroundcolordisabled=   12632256
         captionbordercolordisabled=   0
         focuscolordisabled=   0
         focusvisible    =   0   'False
         caption         =   "Del"
         border          =   0   'False
         borderanimation =   0
         font            =   "frmMain.frx":00C8
      End
      Begin Project1.uFrame ufrmSavedSettings 
         Height          =   735
         Index           =   4
         Left            =   135
         TabIndex        =   17
         Top             =   4695
         Width           =   2895
         _extentx        =   5106
         _extenty        =   1296
         backgroundcolor =   4210752
         forecolor       =   16777215
         caption         =   "Options for selected item"
         font            =   "frmMain.frx":00F0
         Begin Project1.uCheckBox uchkLoadOnStartup 
            Height          =   450
            Left            =   60
            TabIndex        =   18
            Top             =   225
            Visible         =   0   'False
            Width           =   2745
            _extentx        =   1455
            _extenty        =   794
            backgroundcolor =   4210752
            border          =   0   'False
            borderthickness =   2
            caption         =   "Load startup"
            captionoffsetleft=   10
            checkborderthickness=   0
            checkselectioncolor=   33023
            checksize       =   3
            font            =   "frmMain.frx":0118
            forecolor       =   16777215
            autosize        =   0   'False
         End
      End
   End
   Begin Project1.uFrame ufrmSavedSettings 
      Height          =   5445
      Index           =   1
      Left            =   120
      TabIndex        =   3
      Top             =   885
      Width           =   5145
      _extentx        =   9075
      _extenty        =   9604
      backgroundcolor =   4210752
      forecolor       =   16777215
      caption         =   "Monitors Found"
      font            =   "frmMain.frx":0140
      Begin VB.PictureBox picDisplays 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1275
         Left            =   135
         ScaleHeight     =   85
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   325
         TabIndex        =   13
         TabStop         =   0   'False
         Top             =   750
         Width           =   4875
         Begin VB.PictureBox picDisplay 
            Appearance      =   0  'Flat
            AutoRedraw      =   -1  'True
            BackColor       =   &H000080FF&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   645
            Index           =   0
            Left            =   255
            ScaleHeight     =   43
            ScaleMode       =   3  'Pixel
            ScaleWidth      =   76
            TabIndex        =   14
            TabStop         =   0   'False
            Top             =   225
            Visible         =   0   'False
            Width           =   1140
         End
      End
      Begin Project1.uFrame ufrmSavedSettings 
         Height          =   1455
         Index           =   2
         Left            =   135
         TabIndex        =   4
         Top             =   2100
         Width           =   4875
         _extentx        =   8599
         _extenty        =   2566
         backgroundcolor =   4210752
         forecolor       =   16777215
         caption         =   "Display Information"
         font            =   "frmMain.frx":0168
         Begin VB.Label lblInfo 
            BackStyle       =   0  'Transparent
            Caption         =   "Offset: x:0 y:0"
            ForeColor       =   &H00FFFFFF&
            Height          =   315
            Index           =   3
            Left            =   195
            TabIndex        =   12
            Top             =   1110
            Width           =   4455
         End
         Begin VB.Label lblInfo 
            BackStyle       =   0  'Transparent
            Caption         =   "VideoCard:"
            ForeColor       =   &H00FFFFFF&
            Height          =   285
            Index           =   2
            Left            =   180
            TabIndex        =   8
            Top             =   810
            Width           =   4485
         End
         Begin VB.Label lblInfo 
            BackStyle       =   0  'Transparent
            Caption         =   "Colors:"
            ForeColor       =   &H00FFFFFF&
            Height          =   285
            Index           =   1
            Left            =   195
            TabIndex        =   7
            Top             =   525
            Width           =   4425
         End
         Begin VB.Label lblInfo 
            BackStyle       =   0  'Transparent
            Caption         =   "Resolution:"
            ForeColor       =   &H00FFFFFF&
            Height          =   285
            Index           =   0
            Left            =   195
            TabIndex        =   6
            Top             =   225
            Width           =   4440
         End
      End
      Begin Project1.uDropDown udrpMonitors 
         Height          =   375
         Left            =   135
         TabIndex        =   5
         Top             =   255
         Width           =   4875
         _extentx        =   8599
         _extenty        =   661
         backgroundcolor =   33023
         bordercolor     =   33023
         forecolor       =   16777215
         selectionbackgroundcolor=   33023
         selectionbordercolor=   33023
         backgroundcolordisabled=   12632256
         selectionbackgroundcolordisabled=   16777215
         selectionbordercolordisabled=   16777215
         font            =   "frmMain.frx":0190
         text            =   ""
         border          =   0   'False
         visibleitems    =   6
      End
      Begin Project1.uFrame ufrmSavedSettings 
         Height          =   1665
         Index           =   3
         Left            =   135
         TabIndex        =   19
         Top             =   3645
         Width           =   4875
         _extentx        =   8599
         _extenty        =   2937
         backgroundcolor =   4210752
         forecolor       =   16777215
         caption         =   "Set new Resolution"
         font            =   "frmMain.frx":01B8
         Begin Project1.uDropDown udrpResolution 
            Height          =   375
            Left            =   1935
            TabIndex        =   20
            Top             =   255
            Width           =   2805
            _extentx        =   4948
            _extenty        =   661
            backgroundcolor =   33023
            forecolor       =   16777215
            selectionbackgroundcolor=   33023
            selectionbordercolor=   33023
            backgroundcolordisabled=   12632256
            selectionbackgroundcolordisabled=   16777215
            selectionbordercolordisabled=   16777215
            font            =   "frmMain.frx":01E0
            text            =   ""
            border          =   0   'False
            visibleitems    =   6
         End
         Begin Project1.uDropDown udrpRefreshRate 
            Height          =   375
            Left            =   1935
            TabIndex        =   21
            Top             =   705
            Width           =   2805
            _extentx        =   4948
            _extenty        =   661
            backgroundcolor =   33023
            forecolor       =   16777215
            selectionbackgroundcolor=   33023
            selectionbordercolor=   33023
            backgroundcolordisabled=   12632256
            selectionbackgroundcolordisabled=   16777215
            selectionbordercolordisabled=   16777215
            font            =   "frmMain.frx":0208
            text            =   ""
            border          =   0   'False
            visibleitems    =   6
         End
         Begin Project1.uButton ubtnSetResolution 
            Height          =   375
            Left            =   1935
            TabIndex        =   24
            Top             =   1155
            Width           =   2805
            _extentx        =   4948
            _extenty        =   661
            backgroundcolor =   33023
            forecolor       =   16777215
            mouseoverbackgroundcolor=   8438015
            focuscolor      =   0
            backgroundcolordisabled=   12632256
            bordercolordisabled=   0
            forecolordisabled=   0
            mouseoverbackgroundcolordisabled=   12632256
            captionbordercolordisabled=   0
            focuscolordisabled=   0
            focusvisible    =   0   'False
            caption         =   "Set Resolution"
            border          =   0   'False
            borderanimation =   0
            font            =   "frmMain.frx":0230
         End
         Begin VB.Label lblSteps 
            BackStyle       =   0  'Transparent
            Caption         =   "3: Profit"
            ForeColor       =   &H00FFFFFF&
            Height          =   240
            Index           =   2
            Left            =   135
            TabIndex        =   25
            Top             =   1200
            Width           =   1725
         End
         Begin VB.Label lblSteps 
            BackStyle       =   0  'Transparent
            Caption         =   "1: Resolution"
            ForeColor       =   &H00FFFFFF&
            Height          =   240
            Index           =   0
            Left            =   135
            TabIndex        =   23
            Top             =   315
            Width           =   1515
         End
         Begin VB.Label lblSteps 
            BackStyle       =   0  'Transparent
            Caption         =   "2: Refresh Rate"
            ForeColor       =   &H00FFFFFF&
            Height          =   240
            Index           =   1
            Left            =   135
            TabIndex        =   22
            Top             =   765
            Width           =   1725
         End
      End
   End
   Begin VB.Label lblStatus 
      ForeColor       =   &H00FFFFFF&
      Height          =   690
      Left            =   2160
      TabIndex        =   9
      Top             =   135
      Width           =   3300
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Type MonitorType
    data As DISPLAY_DEVICE
    displayResolutions() As devMode
    scannedForModes As Boolean
    displayResolutionCurrent As devMode
End Type

Private Type MonitorAndSettingType
    data As DISPLAY_DEVICE
    displayResolutionCurrent As devMode
End Type

Dim monitors() As MonitorType
Dim monitorCount As Long

Private Type ProgramSaveType
    monitorSaveData() As MonitorAndSettingType
    saveName As String
    loadOnStartup As Boolean
    isSave As Boolean
End Type

Dim savedResolution(0 To 4) As ProgramSaveType

Private Function TrimNull(Item As String)

    Dim pos As Integer
   
   'double check that there is a chr$(0) in the string
    pos = InStr(Item, Chr$(0))
    If pos Then
       TrimNull = Left$(Item, pos - 1)
    Else
       TrimNull = Item
    End If
  
End Function

Sub refreshCurrentResolution(Optional scanModes As Boolean = True)
    Dim i As Long
    Dim sDeviceName As String
    
    For i = 0 To UBound(monitors)
        sDeviceName = TrimNull(StrConv(monitors(i).data.deviceName, vbUnicode))
        
        EnumDisplaySettings sDeviceName, -1, monitors(i).displayResolutionCurrent
    Next i
    
    calculateDisplayPositions scanModes
    
End Sub

Sub detectAllMonitors(Optional scanModes As Boolean = True)
    Static isScanning As Boolean
    If isScanning Then Exit Sub
    isScanning = True
    ubtnScanMonitors.Enabled = False
    
    
    Dim sDeviceName As String
    Dim dev As DISPLAY_DEVICE
    Dim deviceIndex As Long
    Dim enumIndex As Long
    Dim deviceModeIndex As Long
    Dim deviceModeIndexReal As Long
    
    Dim enumResults As Long
    
    
    Dim totalModes As Long
    Dim totalMonitors As Long
    Dim totalModesRefreshCounter As Long
    lblStatus.Caption = "Monitors: 0" & vbCrLf & "Modes: 0"
    
    totalMonitors = 1
    
    udrpMonitors.Clear
    
    Dim c As Long
    
    ReDim monitors(0)
    
    monitors(0).data.cb = Len(monitors(0).data)
    
    Do While EnumDisplayDevices(0&, enumIndex, monitors(deviceIndex).data, 0&)
        
        sDeviceName = TrimNull(StrConv(monitors(deviceIndex).data.deviceName, vbUnicode))
        
        'get current display mode
        EnumDisplaySettings sDeviceName, -1, monitors(deviceIndex).displayResolutionCurrent
        
        ReDim monitors(deviceIndex).displayResolutions(0)
        
        monitors(deviceIndex).scannedForModes = False
        
        'start of display modes
        deviceModeIndex = 0
        deviceModeIndexReal = 0
        Do
            enumResults = EnumDisplaySettings(sDeviceName, deviceModeIndexReal, monitors(deviceIndex).displayResolutions(deviceModeIndex))
            If enumResults <= 0 Then
                deviceModeIndex = deviceModeIndex - 1
                totalModes = totalModes - 1
                If deviceModeIndex >= 0 Then ReDim Preserve monitors(deviceIndex).displayResolutions(deviceModeIndex)
                
                Exit Do
            End If
            
            'Debug.Print enumResults
            
            totalModesRefreshCounter = totalModesRefreshCounter + 1
            If totalModesRefreshCounter > 150 Then
                lblStatus.Caption = "Monitors: " & totalMonitors & vbCrLf & "Modes: " & totalModes
                DoEvents
                totalModesRefreshCounter = 0
                'Exit Do
            End If
            
            totalModes = totalModes + 1
            
            deviceModeIndexReal = deviceModeIndexReal + 1
            If monitors(deviceIndex).displayResolutions(deviceModeIndex).dmBitsPerPel = 32 Then
                
                deviceModeIndex = deviceModeIndex + 1
                ReDim Preserve monitors(deviceIndex).displayResolutions(deviceModeIndex)
            End If
            
            If scanModes = False Then Exit Do
            'monitors(deviceModeIndex).data.cb = Len(monitors(deviceIndex).data)
        Loop
        'end of display modes
            
        monitors(deviceIndex).scannedForModes = scanModes
        
        If deviceModeIndex > 0 Then
            If scanModes Then
                'add display to the list
                udrpMonitors.AddItem sDeviceName
            End If
            
            'increase index for next monitor to detect
            deviceIndex = deviceIndex + 1
            totalMonitors = totalMonitors + 1
            
            ReDim Preserve monitors(deviceIndex)
            monitors(deviceIndex).data.cb = Len(monitors(deviceIndex).data)
        End If
        
        
        enumIndex = enumIndex + 1
    Loop
    
    totalMonitors = totalMonitors - 1
    deviceIndex = deviceIndex - 1
    If deviceIndex >= 0 Then ReDim Preserve monitors(deviceIndex)
    
    udrpMonitors.ItemsVisible = IIf(udrpMonitors.ListCount < 1, 1, udrpMonitors.ListCount)
    
    monitorCount = UBound(monitors) + 1
    lblStatus.Caption = "Monitors: " & totalMonitors & vbCrLf & "Modes: " & totalModes
    If scanModes = False Then
        lblStatus.Caption = lblStatus.Caption & vbCrLf & "Click scan to unlock"

    End If
    
    udrpMonitors.Enabled = scanModes
    udrpResolution.Enabled = scanModes
    udrpRefreshRate.Enabled = scanModes
    ubtnSetResolution.Enabled = scanModes
    
    
    calculateDisplayPositions scanModes
    
    ubtnScanMonitors.Enabled = True
    isScanning = False
    
    
End Sub


Sub calculateDisplayPositions(Optional scanModes As Boolean = True)
    Dim i As Long
    
    Dim xMin As Long
    Dim yMin As Long
    Dim xMax As Long
    Dim yMax As Long
    
    For i = 0 To UBound(monitors)
        With monitors(i).displayResolutionCurrent
            
            If .dmPosition.X < xMin Then xMin = .dmPosition.X
            If .dmPosition.Y < yMin Then yMin = .dmPosition.Y
            
            If .dmPosition.X + .dmPelsWidth > xMax Then xMax = .dmPosition.X + .dmPelsWidth
            If .dmPosition.Y + .dmPelsHeight > yMax Then yMax = .dmPosition.Y + .dmPelsHeight
        End With
    Next i
    
    Dim xCenter As Long
    Dim yCenter As Long
    
    Dim h As Long
    Dim w As Long
    
    w = xMax - xMin
    h = yMax - yMin
    
    xCenter = picDisplays.ScaleWidth / 2
    yCenter = picDisplays.ScaleHeight / 2
    
    Dim xScale As Double
    Dim yScale As Double
    Dim rescale As Double
    
    xScale = (picDisplays.ScaleWidth - 3) / w
    yScale = (picDisplays.ScaleHeight - 3) / h
    
    If xScale < yScale Then
        rescale = xScale
    Else
        rescale = yScale
    End If
    
    While picDisplay.Count <= UBound(monitors)
        i = picDisplay.Count
        Load picDisplay(i)
        picDisplay(i).BorderStyle = 0
        picDisplay(i).Visible = True
    Wend
    
    For i = 0 To UBound(monitors)
        picDisplay(i).Visible = True
        picDisplay(i).BackColor = IIf(scanModes, &H80FF&, &HC0C0C0)
        With monitors(i).displayResolutionCurrent
            picDisplay(i).Left = xCenter - w / 2 * rescale + (.dmPosition.X - xMin) * rescale + 1
            picDisplay(i).Width = (.dmPelsWidth * rescale) - 2
            
            picDisplay(i).Top = yCenter - h / 2 * rescale + (.dmPosition.Y - yMin) * rescale
            picDisplay(i).Height = (.dmPelsHeight * rescale) - 2
            
        End With
    Next i
    
    
End Sub


Private Sub Form_Load()
    
    uttHelp.setForm Me
 
    uttHelp.Add ubtnScanMonitors.hWnd, "This scans the system for connected monitors" & vbCrLf & "and their supported modes."
   
    uttHelp.StartTimer
    
    
    ubtnSaveCurrent.Caption = "Save Current" & vbCrLf & "Monitor Setup"
    
    uchkLoadOnStartup.Caption = "Load saved settings" & vbCrLf & "on program start."
    
    
    
    ulstSavedMonitors.setTabStop 0, 5
    
    loadMonitors
    
    detectAllMonitors False
    
    lblStatus.BackStyle = 0
    'ulstSavedMonitors.AddItem "1920x1080 @ 144Hz" & vbCrLf & "1920x1080 @ 144Hz" & vbCrLf & "1920x1080 @ 144Hz"
    ' detectAllMonitors
    
    
    Dim i As Long
    
    For i = 0 To 4
        If savedResolution(i).isSave Then
            If savedResolution(i).loadOnStartup Then
                setSavedResolution i
                Exit For
            End If
        End If
    Next i
   
End Sub





Private Sub picDisplay_Click(index As Integer)
    udrpMonitors.ListIndex = index
End Sub

Private Sub ubntDeleteSave_Click(Button As Integer, X As Single, Y As Single)
    Dim index As Long
    
    index = ulstSavedMonitors.ListIndex
    If index < 0 Then Exit Sub
    
    index = ulstSavedMonitors.ItemData(index)
    
    savedResolution(index).isSave = False
    Erase savedResolution(index).monitorSaveData
    
    saveMonitors
    
    loadMonitors
    
    ulstSavedMonitors_ItemChange ulstSavedMonitors.ListIndex
End Sub

Private Sub ubtnSaveCurrent_Click(Button As Integer, X As Single, Y As Single)
    Dim i As Long
    Dim devModes() As devMode
    
    Dim displayValue As String
    
    If monitorCount <= 0 Then Exit Sub
    
    Dim newIndex As Long
    
    newIndex = -1
    For i = 0 To 4
        If savedResolution(i).isSave = False Then
            newIndex = i
            Exit For
        End If
    Next i
    
    If newIndex = -1 Then
        MsgBox "No more save space available"
        Exit Sub
    End If
    
    savedResolution(newIndex).isSave = True
    savedResolution(newIndex).saveName = InputBox("Enter the description for this save:")
    ReDim savedResolution(newIndex).monitorSaveData(0 To monitorCount - 1)
    
    For i = 0 To monitorCount - 1
        savedResolution(newIndex).monitorSaveData(i).displayResolutionCurrent = monitors(i).displayResolutionCurrent
        savedResolution(newIndex).monitorSaveData(i).data = monitors(i).data
    Next i
    
    ulstSavedMonitors.AddItem displayValue
    
    saveMonitors

    loadMonitors
    
End Sub

Sub saveMonitors()
    Dim nFile As Long
    nFile = FreeFile
    
    Open App.Path & "\monitors.bin" For Binary Access Write As #nFile
        Put #nFile, , savedResolution
    Close nFile
End Sub

Sub loadMonitors()
    Dim nFile As Long
    nFile = FreeFile
    
    Dim i As Long
    Dim j As Long
    
    Dim displayValue As String
    ulstSavedMonitors.Clear

    'ReDim devModes(0 To 2)
    
    Open App.Path & "\monitors.bin" For Binary Access Read Write As #nFile
        If (LOF(nFile) > 0) Then
            Get #nFile, , savedResolution
            
            On Error GoTo endit:
            For i = 0 To 4
                If savedResolution(i).isSave Then
                    displayValue = savedResolution(i).saveName & vbCrLf & (UBound(savedResolution(i).monitorSaveData) + 1) & " monitor(s)" & vbCrLf
                    
                    For j = 0 To UBound(savedResolution(i).monitorSaveData)
                        If j > 0 Then displayValue = displayValue & ", "
                        With savedResolution(i).monitorSaveData(j)
                            displayValue = displayValue & .displayResolutionCurrent.dmPelsWidth & "x" & .displayResolutionCurrent.dmPelsHeight & " @ " & .displayResolutionCurrent.dmDisplayFrequency & "Hz"
                        End With
                        
                    Next j
                    
                    ulstSavedMonitors.AddItem displayValue, i
                End If
                
            Next i
            
            
            
    
        End If
    Close nFile
endit:
    

End Sub

Private Sub ubtnScanMonitors_Click(Button As Integer, X As Single, Y As Single)
    MsgBox "This will take around 10 to 20 seconds"
    detectAllMonitors
End Sub

Private Sub ubtnSetResolution_Click(Button As Integer, X As Single, Y As Single)
    Dim monitorIndex As Long
    Dim devModeIndex As Long
    Dim sDeviceName As String
    
    
    monitorIndex = udrpMonitors.ListIndex
    If monitorIndex = -1 Then Exit Sub
    
    devModeIndex = udrpRefreshRate.ListIndex
    If devModeIndex = -1 Then Exit Sub
    
    Dim d As devMode
    
    devModeIndex = udrpRefreshRate.ItemData(devModeIndex)
    
    sDeviceName = TrimNull(StrConv(monitors(monitorIndex).data.deviceName, vbUnicode))
    d = monitors(monitorIndex).displayResolutions(devModeIndex)
    
    Debug.Print d.dmPelsWidth & "x" & d.dmPelsHeight & " @ " & d.dmDisplayFrequency
    

    setResolution sDeviceName, d
    
    refreshCurrentResolution
    
End Sub

Private Sub setResolution(deviceName As String, dev As devMode)
    
    Select Case ChangeDisplaySettingsEx(deviceName, dev, 0, CDS_UPDATEREGISTRY, 0)
        Case DISP_CHANGE_SUCCESSFUL
            Debug.Print deviceName & " succeeded"
        Case DISP_CHANGE_RESTART
            Debug.Print deviceName & " needs a restart"
        Case Else
            Debug.Print deviceName & " could not change"
    End Select
End Sub

Private Sub ubtnSetSavedResolution_Click(Button As Integer, X As Single, Y As Single)
    Dim index As Long
    
    
    index = ulstSavedMonitors.ListIndex
    If index = -1 Then Exit Sub
    
    
    
    setSavedResolution index
End Sub

Sub setSavedResolution(index As Long)
    Dim i As Long
    Dim deviceName As String
    On Error GoTo endit:
    
    For i = 0 To UBound(savedResolution(index).monitorSaveData)
        deviceName = TrimNull(StrConv(savedResolution(index).monitorSaveData(i).data.deviceName, vbUnicode))
        
        setResolution deviceName, savedResolution(index).monitorSaveData(i).displayResolutionCurrent
        
    Next i
    
endit:
    refreshCurrentResolution udrpMonitors.Enabled
End Sub

Private Sub uchkLoadOnStartup_ActivateNextState(u_Cancel As Boolean, u_NewState As uCheckboxConstants)
    Dim index As Long
    
    index = ulstSavedMonitors.ListIndex
    If index = -1 Then Exit Sub
    
    index = ulstSavedMonitors.ItemData(index)
    
    Dim i As Long
    
    For i = 0 To 4
        If savedResolution(i).isSave Then
            savedResolution(i).loadOnStartup = False
        End If
    Next i
    
    If u_NewState = u_unChecked Then
        u_NewState = u_Checked
    Else
        u_NewState = u_unChecked
    End If
    
    savedResolution(index).loadOnStartup = IIf(u_NewState = u_Checked, True, False)

    saveMonitors
End Sub

Private Sub udrpMonitors_ItemChange(ItemIndex As Long)
    Dim i As Long
    Dim doubles As String
    Dim singles As String
    
    If ItemIndex = -1 Then Exit Sub
    
    With monitors(ItemIndex).displayResolutionCurrent
        lblInfo(0).Caption = "Resolution: " & .dmPelsWidth & "x" & .dmPelsHeight & " @ " & .dmDisplayFrequency & "Hz"
        lblInfo(1).Caption = "Colors: " & .dmBitsPerPel & "-bits"
        lblInfo(2).Caption = "VideoCard: " & TrimNull(StrConv(monitors(ItemIndex).data.DeviceString, vbUnicode))
        lblInfo(3).Caption = "Offset: x:" & .dmPosition.X & " y:" & .dmPosition.Y
        
    End With
    
    
    
    For i = 0 To udrpMonitors.ListCount - 1
        picDisplay(i).BackColor = &H80FF&
    Next i
    
    picDisplay(ItemIndex).BackColor = &H80C0FF
    
    udrpRefreshRate.Clear
    udrpResolution.Clear
    udrpResolution.RedrawPause
    
    
    Dim selectionIndex As Long
    selectionIndex = -1
    
    For i = 0 To UBound(monitors(ItemIndex).displayResolutions)
        With monitors(ItemIndex).displayResolutions(i)
            singles = .dmPelsWidth & "x" & .dmPelsHeight & " "
            If InStr(1, doubles, singles) = 0 Then
                If monitors(ItemIndex).displayResolutionCurrent.dmPelsWidth = .dmPelsWidth And monitors(ItemIndex).displayResolutionCurrent.dmPelsWidth = .dmPelsWidth Then
                    selectionIndex = udrpResolution.AddItem(singles, i)
                Else
                    udrpResolution.AddItem singles, i
                End If
                
                doubles = doubles & singles
            End If
            
        End With
    Next i
    
    udrpResolution.RedrawResume
    
    If selectionIndex <> -1 Then udrpResolution.ListIndex = selectionIndex
    
End Sub

Private Sub udrpResolution_ItemChange(ItemIndex As Long)
    If ItemIndex = -1 Then Exit Sub
    
    Dim lWidth As Long
    Dim lHeight As Long
    Dim i As Long
    Dim selectedDevMode As devMode
    Dim doubles As String
    Dim singles As String
    Dim selectionIndex As Long
    selectionIndex = -1
    
    udrpRefreshRate.Clear
    
    Dim lCurrent As Long
    
    lCurrent = udrpMonitors.ListIndex
    If lCurrent = -1 Then Exit Sub
    
    selectedDevMode = monitors(lCurrent).displayResolutions(udrpResolution.ItemData(ItemIndex))
    
    
    
    For i = 0 To UBound(monitors(lCurrent).displayResolutions)
        With monitors(lCurrent).displayResolutions(i)
            If selectedDevMode.dmPelsHeight = .dmPelsHeight And selectedDevMode.dmPelsWidth = .dmPelsWidth Then
                singles = .dmDisplayFrequency & " "
                
                If InStr(1, doubles, singles) = 0 Then
                    If monitors(lCurrent).displayResolutionCurrent.dmDisplayFrequency = .dmDisplayFrequency Then
                        selectionIndex = udrpRefreshRate.AddItem(singles, i)
                    Else
                        udrpRefreshRate.AddItem singles, i
                    End If
                    doubles = doubles & singles
                End If
            
            End If
        End With
    Next i
    
    udrpRefreshRate.ItemsVisible = udrpRefreshRate.ListCount
    
    If selectionIndex <> -1 Then udrpRefreshRate.ListIndex = selectionIndex
    
End Sub



Private Sub ulstSavedMonitors_DblClick()
    ubtnSetSavedResolution_Click 0, 0, 0
End Sub

Private Sub ulstSavedMonitors_ItemChange(ItemIndex As Long)
    Dim index As Long
    
    index = ulstSavedMonitors.ListIndex
    If index = -1 Then
        uchkLoadOnStartup.Visible = False
        Exit Sub
    Else
        uchkLoadOnStartup.Visible = True
    End If
    
    index = ulstSavedMonitors.ItemData(index)
    uchkLoadOnStartup.Value = IIf(savedResolution(index).loadOnStartup, u_Checked, u_unChecked)
    
    
End Sub












