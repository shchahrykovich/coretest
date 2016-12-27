FROM microsoft/dotnet:1.1.0-runtime
WORKDIR /app
COPY artifacts/ .
ENTRYPOINT ["dotnet", "WebApp.dll"]
