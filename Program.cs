using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Qml.Net;
using Qml.Net.Runtimes;
using YamlDotNet.Core;
using YamlDotNet.Core.Events;
using YamlDotNet.RepresentationModel;
using YamlDotNet.Serialization;
using YamlDotNet.Serialization.NamingConventions;

namespace QmlnetExp
{
    class Program
    {
      public class NetObject
        {
            public void Method()
            {
                // Called from QML.
            }
        }

        static int Main(string[] args)
        {
            var unitsConfig = File.ReadAllText("res/config/units.yaml");
            var buildingsConfig = File.ReadAllText("res/config/buildings.yaml");
            string config = unitsConfig + "\n" + buildingsConfig;
            
            var deserializer = new DeserializerBuilder()
                .WithNamingConvention(new CamelCaseNamingConvention())
                .Build();
            
            var widgets = deserializer.Deserialize<Dictionary<string,Dictionary<string,Widget>>>(config);

            foreach (var item in widgets)
            {
                foreach (var widget in item.Value)
                {
                    Console.WriteLine(widget.Value);
                }
            }


            /*
            RuntimeManager.DiscoverOrDownloadSuitableQtRuntime();
            QQuickStyle.SetStyle("Material");
            using (var app = new QGuiApplication(args))
            {
                using (var engine = new QQmlApplicationEngine())
                {
                    engine.Load("Main.qml");
                    
                    return app.Exec();
                }
            }
            */
            return 0;
        }
    }
    
    
}
