@echo off
REM Generate Visual Studio project files for CashDemo.uproject using UE 5.6 installed build

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

REM Check if Build.bat exists
if not exist "%UE_ENGINE_PATH%\Build\BatchFiles\Build.bat" (
    echo Error: Build.bat not found at %UE_ENGINE_PATH%\Build\BatchFiles\
    echo This may not be a valid installed build of Unreal Engine.
    exit /b 1
)

echo Generating project files for Delve.uproject...
"%UE_ENGINE_PATH%\Build\BatchFiles\Build.bat" -projectfiles -project="%~dp0CashDemo.uproject" -game -rocket -progress

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Error: Project file generation failed with error code %ERRORLEVEL%
    exit /b %ERRORLEVEL%
)

echo.
echo Project files generated successfully!
