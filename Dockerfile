FROM microsoft/dotnet:1.1.0-runtime
WORKDIR /app
COPY artifacts/ .
VOLUME /data
ENTRYPOINT ["dotnet", "WebApp.dll"]
