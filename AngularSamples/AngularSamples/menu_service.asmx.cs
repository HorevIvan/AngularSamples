using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Services;

namespace AngularSamples
{
    /// <summary>
    /// Summary description for MenuService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [System.Web.Script.Services.ScriptService]
    public class menu_service : System.Web.Services.WebService
    {

        [WebMethod]
        public MenuItem[] GetItems()
        {
            var items = new List<MenuItem>();

            var pages = (new DirectoryInfo(Server.MapPath(""))).GetFiles("*.aspx");

            foreach (var page in pages)
            {
                using (var streamReader = new StreamReader(page.OpenRead()))
                {
                    var html = streamReader.ReadToEnd();

                    var match = Regex.Match(html, "Title=\"[A-Za-z\\s]{1,}\"");

                    if (match.Success)
                    {
                        var title = match.Value.Split('"')[1];

                        items.Add(new MenuItem { Name = title, Path = page.Name });
                    }
                }
            }

            return items.ToArray();
        }
    }

    public class MenuItem
    {
        public String Name { set; get; }

        public String Path { set; get; }

    }
}
