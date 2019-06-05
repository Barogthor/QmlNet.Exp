using System;
using System.Collections.Generic;

namespace QmlnetExp
{
    public class Widget
    {
        public String Name { get; set; }
        public int CreationTime { get; set; }
        public int GoldCost { get; set; }
        public int WoodCost { get; set; }
        
        private List<Widget> links = new List<Widget>();
        public List<Widget> Links
        {
            get => links;
            set => links = value == null ? new List<Widget>() :  value; 
        }
        
        public override string ToString()
        {
            string s = "";
            links.ForEach(link => s+=link+"|");

            return "{Name: " + Name + ", CreationTime: " + CreationTime + ", GoldCost: " + GoldCost + ", WoodCost: " +
                   WoodCost+", links: ["+s+"]}";
        }
    }
}