
Imports System.Web.Services.Description
Imports System.Xml
Imports System.Xml.XPath

Public Class Show
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        readSchedule()


        'IMAGE
        'slideShow.Controls.Add(New LiteralControl("<img src=""\resources\image\minebea.png"" class=""media-slide"" />"))
        'slideShow.Controls.Add(New LiteralControl("<img src=""\resources\image\bearing.png"" class=""media-slide"" />"))

        'registerScriptSlideShow("media-slide", 2000)
        'registerScriptFullScreen()

        'AUDIO
        'Dim _element As New StringBuilder
        '_element.AppendLine("<audio id=""av-slide"" autoplay>")
        '_element.AppendLine("   <source src=""\resources\audio\ลัก - The Mousses.mp3"" type=""audio/mpeg"">")
        '_element.AppendLine("</audio>")

        'slideShow.Controls.Add(New LiteralControl(_element.ToString))

        'VIDEO
        'Dim _element As New StringBuilder
        '_element.AppendLine("<video id=""av-slide"" controls autoplay>")
        '_element.AppendLine("   <source src=""resources\video\mm.mp4"" type=""video/mp4"">")
        '_element.AppendLine("</video>")

        'slideShow.Controls.Add(New LiteralControl(_element.ToString))
        'setVolume(0.2)
        'registerScriptReloadPage(0, True)
        'registerScriptFullScreen("av-slide")

        'Dim _timeOut As Integer = 0
        'Dim _dateNow As DateTime = DateTime.Now
        'Dim _dateStart As DateTime = New DateTime(_dateNow.Year, _dateNow.Month, _dateNow.Day, 12, 54, 0)
        'Dim _dateStop As DateTime = New DateTime(_dateNow.Year, _dateNow.Month, _dateNow.Day, 12, 55, 0)

        'If _dateNow.TimeOfDay >= _dateStart.TimeOfDay And _dateNow.TimeOfDay <= _dateStop.TimeOfDay Then
        '    'SET SLIDE SHOW IMAGE, AUDIO, VIDEO
        '    'slideShow.Controls.Add(New LiteralControl("<img src=""\resources\image\cat1.jpg"" class=""img-slide animate-fading"" />"))
        '    'slideShow.Controls.Add(New LiteralControl("<img src=""\resources\image\cat2.jpg"" class=""img-slide animate-fading"" />"))
        '    'registerScriptSlideShow("img-slide", 5000)

        '    'SET STOP TIME
        '    _timeOut = (_dateStop.TimeOfDay - _dateNow.TimeOfDay).TotalMilliseconds
        '    registerScriptReloadPage(_timeOut)
        'Else
        '    slideShow.Controls.Add(New LiteralControl("<h1 id=""title"" class=""title"">No Presentation</h1>"))
        'End If

        ''NEXT SLIDE    
        '_timeOut = (_dateStart - _dateNow).TotalMilliseconds
        'If _timeOut > 0 Then
        '    registerScriptReloadPage(_timeOut)
        'End If

        'Dim xDocs = XDocument.Load(Server.MapPath("schedule.xml"))
    End Sub

    Private Sub readSchedule()
        Dim file As String = Server.MapPath("Schedule.xml")
        Dim xmlDoc As New XmlDocument
        xmlDoc.Load(file)

        Dim nodeList = xmlDoc.SelectNodes("/Schedule/Trigger")

        'slideShow.Controls.Add(New LiteralControl("<img src=""\resources\image\minebea.png"" class=""media-slide"" />"))
        'slideShow.Controls.Add(New LiteralControl("<img src=""\resources\image\bearing.png"" class=""media-slide"" />"))


        Dim kk = ""
    End Sub

#Region "--- Javascripts ---"
    Private Sub setVolume(number As Double, Optional mute As Boolean = False)
        Dim _script As New StringBuilder
        _script.AppendLine("function setVolume() {")
        _script.AppendLine("    let av = document.getElementById(""av-slide"");")
        _script.AppendLine($"   av.volume = {number};")
        _script.AppendLine($"   av.muted = {mute.ToString.ToLower};")
        _script.AppendLine("}")
        _script.AppendLine("setVolume();")
        '_script.AppendLine("setTimeout(setVolume, 2000);")

        ScriptManager.RegisterStartupScript(Me, Me.GetType, "Volume", _script.ToString, True)
    End Sub

    Private Sub registerScriptReloadPage(timeOut As Integer, Optional fromMedia As Boolean = False)
        Dim _script As New StringBuilder
        _script.AppendLine("function reloadPage() {")
        _script.AppendLine("    location.reload();")
        _script.AppendLine("}")
        If fromMedia Then
            _script.AppendLine("function reloadPageByDurationDelay() {")
            _script.AppendLine("    let av = document.getElementById(""av-slide"");")
            _script.AppendLine("    setTimeout(reloadPage, av.duration);")
            '_script.AppendLine("    console.log(elem.duration);")
            _script.AppendLine("}")
            _script.AppendLine("setTimeout(reloadPageByDurationDelay, 1000);")
        Else
            _script.AppendLine($"setTimeout(reloadPage, {timeOut});")
        End If

        ScriptManager.RegisterStartupScript(Me, Me.GetType, "ReloadPage", _script.ToString, True)
    End Sub

    Private Sub registerScriptSlideShow(className As String, timeOfSlide As Integer)
        Dim _script As New StringBuilder
        _script.AppendLine("let slideIndex = 0;")
        _script.AppendLine("startShow();")
        _script.AppendLine("function startShow() {")
        _script.AppendLine($"   var slides = document.getElementsByClassName(""{className}"");")
        _script.AppendLine("    console.log(slides.length);")
        _script.AppendLine("    for (i = 0; i < slides.length; i++) {")
        _script.AppendLine("        slides[i].style.display = ""none"";")
        _script.AppendLine("    }")
        _script.AppendLine("    slides[slideIndex].style.display = ""block"";")
        _script.AppendLine("    slideIndex++;")
        _script.AppendLine("    if (slideIndex > (slides.length - 1)) {slideIndex = 0}")
        _script.AppendLine($"   setTimeout(startShow, {timeOfSlide});")
        _script.AppendLine("}")

        ScriptManager.RegisterStartupScript(Me, Me.GetType, "SlideShow", _script.ToString, True)
    End Sub

    Private Sub registerScriptFullScreen(Optional elementId As String = "")
        Dim _script As New StringBuilder
        If String.IsNullOrEmpty(elementId) Then
            'Fullscreen Document
            _script.AppendLine("var elem = document.documentElement;")
        Else
            'Fullscreen Video
            _script.AppendLine($"var elem = document.getElementById(""{elementId}"");")
        End If
        _script.AppendLine("console.log(document.fullscreenEnabled);")
        _script.AppendLine("console.log(document.fullscreenElement);")

        _script.AppendLine("function openFullscreen() {")
        _script.AppendLine("    if (elem.requestFullscreen) {")
        _script.AppendLine("        console.log('fs1');")
        _script.AppendLine("        elem.requestFullscreen();")
        _script.AppendLine("    } else if (elem.webkitRequestFullscreen) {")    'Safari
        _script.AppendLine("        elem.webkitRequestFullscreen();")
        _script.AppendLine("    } else if (elem.msRequestFullscreen) {")    'IE11
        _script.AppendLine("        elem.msRequestFullscreen();")
        _script.AppendLine("    }")
        _script.AppendLine("}")
        _script.AppendLine("function closeFullscreen() {")
        _script.AppendLine("    if (document.exitFullscreen) {")
        _script.AppendLine("        document.exitFullscreen();")
        _script.AppendLine("    } else if (document.webkitExitFullscreen) {")   'Safari
        _script.AppendLine("        document.webkitExitFullscreen();")
        _script.AppendLine("    } else if (document.msExitFullscreen) {")   'IE11
        _script.AppendLine("        document.msExitFullscreen();")
        _script.AppendLine("    }")
        _script.AppendLine("}")
        _script.AppendLine("openFullscreen();")
        '_script.AppendLine("setTimeout(openFullscreen, 3000);")

        ScriptManager.RegisterStartupScript(Me, Me.GetType, "FullScreen", _script.ToString, True)
        'ScriptManager.RegisterStartupScript(Me, Me.GetType, "OpenFullScreen", "openFullscreen();", True)
    End Sub
#End Region

End Class