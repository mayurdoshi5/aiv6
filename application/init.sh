#!/bin/bash

# Debug: Check for application.yml
if [ -f "/opt/config/application.yml" ]; then
    echo "application.yml found at /opt/config/application.yml"
else
    echo "Error: application.yml not found at /opt/config/application.yml"
    exit 1
fi

# Debug: Check for drivers directory
if [ -d "/opt/config/drivers" ]; then
    echo "Drivers directory found at /opt/config/drivers"
else
    echo "Warning: Drivers directory not found at /opt/config/drivers"
fi

# Start AIV application
echo "Starting AIV application..."
java --add-opens=java.base/java.nio=ALL-UNNAMED --add-exports=java.base/sun.nio.ch=ALL-UNNAMED --add-opens=java.base/sun.nio.ch=ALL-UNNAMED -Dspring.config.location=/opt/config/application.yml -Dloader.path=/opt/config/drivers -cp /opt/repository/econfig/:run.jar org.springframework.boot.loader.PropertiesLauncher