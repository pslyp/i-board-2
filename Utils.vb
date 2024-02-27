Class Utils

    Public Function getMachineName() As String
        Return Environment.MachineName
    End Function

    Public Function getClientName() As String
        'REMOTE_HOST
        'REMOTE_ADDR
        'REMOTE_USER
        Try
            Dim host As String = HttpContext.Current.Request.ServerVariables.Item("REMOTE_ADDR")
            Dim hostName As String = System.Net.Dns.GetHostEntry(host).HostName
            Dim machineName As String = hostName.Split({"."}, StringSplitOptions.RemoveEmptyEntries)(0)
            Return machineName
        Catch ex As Exception
            Throw New Exception(ex.Message)
        End Try
    End Function

End Class