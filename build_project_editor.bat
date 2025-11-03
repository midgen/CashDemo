@echo off
REM Build Delve Editor using UnrealBuildTool

REM Check if UE_ENGINE_PATH environment variable is set
if not defined UE_ENGINE_PATH (
    echo Error: UE_ENGINE_PATH environment variable is not set
    echo Please set the UE_ENGINE_PATH environment variable to point to your Unreal Engine installation.
    exit /b 1
)

echo Using Unreal Engine at: %UE_ENGINE_PATH%
echo.

REM Check if engine path exists
if not exist "%UE_ENGINE_PATH%" (
    echo Error: Unreal Engine path not found at %UE_ENGINE_PATH%
    echo Please verify your UE_ENGINE_PATH environment variable points to a valid engine installation.
    exit /b 1
)

REM Check if UnrealBuildTool exists
if not exist "%UE_ENGINE_PATH%\Binaries\DotNET\UnrealBuildTool\UnrealBuildTool.exe" (
    echo Error: UnrealBuildTool.exe not found at %UE_ENGINE_PATH%\Binaries\DotNET\UnrealBuildTool\
    echo This may not be a valid installed build of Unreal Engine.
    exit /b 1
)

echo Building DelveEditor...
echo.

"%UE_ENGINE_PATH%\Binaries\DotNET\UnrealBuildTool\UnrealBuildTool.exe" CashDemoEditor Win64 Development -Project="%CD%\CashDemo.uproject" -TargetType=Editor -Progress -NoHotReload -NoXGE

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Error: Build failed with error code %ERRORLEVEL%
    exit /b %ERRORLEVEL%
)

echo.
echo Build completed successfully!