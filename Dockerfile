FROM microsoft/dotnet:1.1.0-runtime

WORKDIR /app
COPY artifacts/ .
VOLUME /data

EXPOSE 5000

ENTRYPOINT ["dotnet", "WebApp.dll"]
