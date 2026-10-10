@echo off
echo ========================================
echo  Ruijie Auth Client - Multi-platform Build
echo ========================================

cd /d %~dp0

if exist rjpa_* del rjpa_*

if not exist go.mod (
    echo Initializing Go module...
    go mod init ruijie
)

echo [1/6] Building Windows x86_64...
set GOOS=windows&set GOARCH=amd64&set CGO_ENABLED=0
go build -ldflags="-s -w" -o rjpa_windows_amd64.exe Ruijie_ePortal_Auth.go

echo [2/6] Building Linux x86_64...
set GOOS=linux&set GOARCH=amd64&set CGO_ENABLED=0
go build -ldflags="-s -w" -o rjpa_linux_amd64 Ruijie_ePortal_Auth.go

echo [3/6] Building Linux ARMv8...
set GOOS=linux&set GOARCH=arm64&set CGO_ENABLED=0
go build -ldflags="-s -w" -o rjpa_linux_arm64 Ruijie_ePortal_Auth.go

echo [4/6] Building Linux ARMv7...
set GOOS=linux&set GOARCH=arm&set GOARM=7&set CGO_ENABLED=0
go build -ldflags="-s -w" -o rjpa_linux_armv7 Ruijie_ePortal_Auth.go

echo [5/6] Building macOS Intel...
set GOOS=darwin&set GOARCH=amd64&set CGO_ENABLED=0
go build -ldflags="-s -w" -o rjpa_macos_amd64 Ruijie_ePortal_Auth.go

echo [6/6] Building macOS Apple Silicon...
set GOOS=darwin&set GOARCH=arm64&set CGO_ENABLED=0
go build -ldflags="-s -w" -o rjpa_macos_arm64 Ruijie_ePortal_Auth.go

echo.
echo ========================================
echo  Build complete!
echo ========================================
dir rjpa_*
pause
