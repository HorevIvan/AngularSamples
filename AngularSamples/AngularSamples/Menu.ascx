<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="AngularSamples.Menu" %>
<%@ Import Namespace="System.IO" %>
<script runat="server">
    IEnumerable<Tuple<String, String>> MenuItems
    {
        get
        {
            var items = new List<Tuple<String, String>>();
            
            var pages = (new DirectoryInfo(Server.MapPath(""))).GetFiles("*.aspx");
            
            foreach(var page in pages)
            {
                using(var streamReader = new StreamReader(page.OpenRead()))
                {
                    var html = streamReader.ReadToEnd();
                    
                    var match = Regex.Match(html, "Title=\"[A-Za-z\\s]{1,}\"");

                    if (match.Success)
                    {
                        var title = match.Value.Split('"')[1];
                        
                        items.Add(new Tuple<String, String>(page.Name, title));
                    }
                }
            }

            return items;
        }
    }
</script>

<%-- TODO: переделать на angular c web сервисом --%>
|
<% foreach(var item in MenuItems) { %>
    <a href="<%=item.Item1 %>"><%=item.Item2 %></a> |
<% } %>