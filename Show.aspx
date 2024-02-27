<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Show.aspx.vb" Inherits="i_board_2.Show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-color: white;
            overflow: hidden;
        }

        .full-page {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            background-color: #c0c0c0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .title {
            font-size: 7em;
            font-family: 'Trebuchet MS', sans-serif;
        }

        .img-slide {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        .av-slide {
            width: 100%;
            height: 100%;
        }

        .media-slide {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        /*video {
            width: 100vw;
            height: 100vh;
            object-fit: cover;
            position: absolute;
            top: 0;
            left: 0;
        }*/

        /*video {
            position: fixed;
            right: 0;
            bottom: 0;
            min-width: 100%;
            min-height: 100%;
            width: auto;
            height: auto;*/
        /*z-index: -100;*/
        /*background: url(polina.jpg) no-repeat;*/
        /*background-size: cover;*/
        /*}*/

        .hide {
            display: none;
        }

        .animate-fading {
            animation: fading 10s infinite;
        }

        @keyframes fading {
            0% {
                opacity: 0;
            }

            50% {
                opacity: 1;
            }

            100% {
                opacity: 0;
            }
        }

        .animate-opacity {
            animation: opac 0.8s
        }

        @keyframes opac {
            from {
                opacity: 0
            }

            to {
                opacity: 1
            }
        }

        .animate-top {
            position: relative;
            animation: animatetop 0.4s
        }

        @keyframes animatetop {
            from {
                top: -300px;
                opacity: 0
            }

            to {
                top: 0;
                opacity: 1
            }
        }

        .animate-left {
            position: relative;
            animation: animateleft 0.4s
        }

        @keyframes animateleft {
            from {
                left: -300px;
                opacity: 0
            }

            to {
                left: 0;
                opacity: 1
            }
        }

        .animate-right {
            position: relative;
            animation: animateright 0.4s
        }

        @keyframes animateright {
            from {
                right: -300px;
                opacity: 0
            }

            to {
                right: 0;
                opacity: 1
            }
        }

        .animate-bottom {
            position: relative;
            animation: animatebottom 0.4s
        }

        @keyframes animatebottom {
            from {
                bottom: -300px;
                opacity: 0
            }

            to {
                bottom: 0;
                opacity: 1
            }
        }

        .animate-zoom {
            animation: animatezoom 0.6s
        }

        @keyframes animatezoom {
            from {
                transform: scale(0)
            }

            to {
                transform: scale(1)
            }
        }

        .animate-input {
            transition: width 0.4s ease-in-out
        }

            .animate-input:focus {
                width: 100% !important
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div id="slideShow" runat="server" class="full-page">
                       <%-- <button id="fs" onclick="openFullscreen();" hidden>Full Screen</button>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                        <a id="cc" href="#"></a>--%>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
    <script>
        setTimeout(function () {
            // document.getElementById('cc').click();
            // document.documentElement.requestFullscreen();
        }, 3000);

        //window.onload = function () {
        //    if (document.fullscreenElement == null) {
        //        document.getElementById('HyperLink1').click();
        //        document.documentElement.requestFullscreen();
        //    } else {

        //    }
        //}
    </script>
</body>
</html>
