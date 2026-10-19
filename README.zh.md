# 🌊 Delft3D 4 Suite (4.07.02) — Windows 社区整合安装包

<p align="center">
  <a href="README.md">English</a> •
  <a href="README.id.md">Bahasa Indonesia</a> •
  <a href="README.nl.md">Nederlands</a> •
  <a href="README.es.md">Español</a> •
  <a href="README.fr.md">Français</a> •
  <b>中文</b>
</p>

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Platform](https://img.shields.io/badge/Platform-Windows%20x64-lightgrey.svg)]()
[![Engine](https://img.shields.io/badge/Deltares-Delft3D%204-005fa3.svg)](https://github.com/Deltares/Delft3D)
[![Download Google Drive](https://img.shields.io/badge/Download-Google%20Drive-4285F4?style=flat&logo=googledrive&logoColor=white)](https://drive.google.com/drive/folders/1n4nYRUO1JAszAicliTmhP5IbFDc4uOIP?usp=sharing)
[![Release](https://img.shields.io/badge/Release-4.07.02%20All--in--One-brightgreen.svg)](../../releases)
[![Citation](https://img.shields.io/badge/Cite%20this%20repo-CITATION.cff-orange.svg)](CITATION.cff)

> **⚠️ 法律声明与版权归属：**  
> 本项目为独立的开源社区打包项目（*非官方社区整合分发*），旨在帮助广大高校师生、海洋与水利科研工作者在 Windows 64 位系统上一键安装经典正交曲线网格数值建模系统 **Delft3D 4 Suite (4.07.02 版)**，免除繁琐复杂的源码编译过程。  
> 所有源代码、数值计算求解器（Kernels）及图形界面（*Delft3D Menu、RGFGRID、QUICKIN*）均由荷兰 **[Stichting Deltares](https://www.deltares.nl/)** 研发并享有完整知识产权与版权。本项目**非 Deltares 官方运营**，严格遵循 Deltares 开源许可协议提供整合分发。

---

## 📦 整合安装包包含内容

本一键式安装包将完整的 Delft3D 4 数值模拟生态集成一体：

1. **Delft3D 4 经典主菜单及模块图形界面 (4.07.02)**：涵盖 FLOW（水动力）、WAVE（海浪）、WAQ（水质）、PART（泥沙/油污颗粒追踪）及 TIDE（潮汐分析）。
2. **正交网格与水深前处理工具**：
   * **RGFGRID**：专用于海岸、河口、河道及湖泊的正交曲线网格生成工具。
   * **QUICKIN**：高精度水深、地形及河床粗糙度三角网空间插值工具。
3. **完整的 64 位高性能计算内核（Kernels）**：
   * **Delft3D-FLOW (`flow2d3d.exe`)**：二维/三维非恒定流水动力学与泥沙输移演变求解器。
   * **Delft3D-WAVE (`wave.exe` & SWAN)**：近岸短峰谱波浪传播与浅水变形计算内核。
   * **Delft3D-WAQ (`delwaq.exe`)**：三维水质生化过程、富营养化及污染物扩散模拟器。
   * **Delft3D-PART (`delpar.exe`)**：油溢、被动示踪剂及漂浮物粒子随机追踪模型。
4. **QUICKPLOT 2.72 绘图工具 (Windows 64位)**：专业后处理可视化软件，支持矢量流场、断面剖面、水深等值线及时间序列导出。
5. **自动化 FlexNet 授权环境**：自动创建配置目录（`C:\Program Files (x86)\DS_Flex`）并写入 Windows 注册表。

---

## 🔒 隐私保护与许可证获取说明

> [!IMPORTANT]
> 为彻底保障用户个人隐私与数据安全，本安装包**绝不捆绑任何私人许可证文件**。每位用户均可通过 Deltares 官方渠道免费获取专属合法许可证（**费用：€ 0.00 / 完全免费**）：
> 🌐 [Deltares Delft3D 4 官方开源许可证申请通道](https://download.deltares.nl/delft3d-4-suite-graphical-user-interface-gui-open-source)

---

## 🚀 下载与安装

可通过 Google Drive 高速云盘直接下载预编译安装程序：
* 🚀 **[通过 Google Drive 高速下载](https://drive.google.com/drive/folders/1n4nYRUO1JAszAicliTmhP5IbFDc4uOIP?usp=sharing)**
* 安装包文件名：`Delft3D_4_Suite_4.07.02_AllInOne_Setup.exe`
* 操作系统支持：Windows 10 / 11 64 位
