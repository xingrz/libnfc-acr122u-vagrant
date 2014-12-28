libnfc-acr122u-vagrant
======

为 ACR-122U 配置好的 [libnfc](http://nfc-tools.org/index.php?title=Libnfc)。

## 初衷

- 对于初级用户来说，在 Linux 下编译配置 libnfc 是个不小的挑战
- libnfc 对于 ACR-122U 需要[额外的配置步骤](setup.sh#19)
- 在 OS X 下，即使没有插入设备，pcscd 也会占用额外的系统资源
- 需要一个更洁净的环境？

## 安装

首先，你需要有 [Vagrant](http://www.vagrantup.com) 及 [VirtualBox](https://www.virtualbox.org)。Vagrant 是一个很好的虚拟镜像管理工具。

```sh
git clone https://github.com/xingrz/libnfc-acr122u-vagrant.git
cd libnfc-acr122u-vagrant
vagrant up
vagrant reload
```

首次 `vagrant up` 会自动执行安装，可能需要较长时间。

## 使用

如果没启动虚拟机，启动它：

```sh
vagrant up
```

然后通过 SSH 进入虚拟机：

```sh
vagrant ssh
```

此时你就得到一个配置好 libnfc 的环境了！试试 `nfc-list -v`？

虚拟机里的 `/vagrant` 目录对应的是宿主机当前的 `libnfc-acr122u-vagrant` 目录。

用完以后，执行 `exit` 断开 SSH 会话回到宿主机，然后执行下面的命令关闭虚拟机：

```sh
vagrant halt
```

很洁净。

## 协议

[MIT License](LICENSE)
