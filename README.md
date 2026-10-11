该项目参考并基于

https://github.com/Turris-Babel/school_ruijie

项目进行修改

主要添加了service参数的选择和更新一下登录验证代码
更新了一版代码后现在service支持自动检测service提供的可选参数

再次感谢Turris-Babel的代码支持！

### 已为Openwrt提供专用软件包，请到https://github.com/Micro-Cnhua/RJPA 查看

# 广东东软学院锐捷校园网认证辅助脚本 (Ruijie ePortal Auth)
一个用于锐捷校园网 ePortal Web 认证的命令行客户端，支持多平台运行，无需浏览器即可完成认证。
service现在已经可以自动检测，可以使用-l进行自动提取，理论上只要是下面这种认证页面就能直接用！
![图片](./屏幕截图%202026-09-09%20164324.png)

广东东软学院直接编译或者下载程序就能用！无需对代码进行修改！

## ✨ 特性
- ✅ **多平台支持**：Windows、Linux、macOS、OpenWrt (ARMv7/ARMv8)
- ✅ **双身份认证**：支持学生/教师身份选择
- ✅ **持久化登录**：断线自动重连，适合路由器部署
- ✅ **灵活配置**：支持自动检测和手动指定认证地址
- ✅ **轻量高效**：无依赖，单文件运行

## 📥 下载预编译版本
从 Releases 页面下载对应平台的二进制文件：

| 文件名 | 适用平台 | 架构 |
|--------|----------|------|
| rjpa_windows_amd64.exe | Windows | x86_64 |
| rjpa_linux_amd64 | Linux | x86_64 |
| rjpa_macos_amd64 | macOS | Intel |
| rjpa_macos_arm64 | macOS | Apple Silicon |
| rjpa_linux_armv8 | OpenWrt/树莓派 | ARMv8 (64位) |
| rjpa_linux_armv7 | OpenWrt | ARMv7 (32位) |

## 🚀 快速开始
### 基本用法
```bash
# 获取程序使用方法
./rjpa_*

# 学生身份登录（默认）
./rjpa_* -u 学号 -p 密码 -m "认证页面URL"

# 教师身份登录
./rjpa_* -u 工号 -p 密码 -s Teacher -m "认证页面URL"

# 持久化登录（每10秒检测一次）
./rjpa_* -u 学号 -p 密码 -m "认证页面URL" -e

# 自动提取service可选择参数
./rjpa_* -l
