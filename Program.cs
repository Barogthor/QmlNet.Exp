using System;
using System.IO;
using Qml.Net;
using Qml.Net.Runtimes;

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
        }
    }
}
