#!/bin/bash
echo "=============================================="
echo "  Ruijie Auth Client - Multi-platform Build"
echo "=============================================="

rm -f ruijie_*

echo "[1/6] Building Windows x86_64..."
GOOS=windows GOARCH=amd64 CGO_ENABLED=0 go build -ldflags="-s -w" -o ruijie_windows_amd64.exe Ruijie_ePortal_Auth.go

echo "[2/6] Building Linux x86_64..."
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -ldflags="-s -w" -o ruijie_linux_amd64 Ruijie_ePortal_Auth.go

echo "[3/6] Building Linux ARMv8..."
GOOS=linux GOARCH=arm64 CGO_ENABLED=0 go build -ldflags="-s -w" -o ruijie_linux_arm64 Ruijie_ePortal_Auth.go

echo "[4/6] Building Linux ARMv7..."
GOOS=linux GOARCH=arm GOARM=7 CGO_ENABLED=0 go build -ldflags="-s -w" -o ruijie_linux_armv7 Ruijie_ePortal_Auth.go

echo "[5/6] Building macOS Intel..."
GOOS=darwin GOARCH=amd64 CGO_ENABLED=0 go build -ldflags="-s -w" -o ruijie_macos_amd64 Ruijie_ePortal_Auth.go

echo "[6/6] Building macOS Apple Silicon..."
GOOS=darwin GOARCH=arm64 CGO_ENABLED=0 go build -ldflags="-s -w" -o ruijie_macos_arm64 Ruijie_ePortal_Auth.go

echo ""
echo "========================================"
echo "  Build complete！"
echo "========================================"
ls -lh ruijie_*
