using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;

//dotnet add package Microsoft.AspNetCore --version 2.2.0

namespace ConsoleAspNet
{
    class Program
    {
        static void Main(string[] args)
        {
            var host = new WebHostBuilder()
                .UseKestrel()
                .Configure(
                    app => {
                        app.Run(context =>
                         context.Response.WriteAsync("<h1>Hello World<h1>"));
                    }
                )
  
    }
}
