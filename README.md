# podspec 配置

## 创建新描述文件

```bash
pod spec create YourPods
```

## 根据项目情况调整描述文件

* `s.license` 修改为 `MIT`
* `s.description` 添加内容
* `s.source` 修改为 `s.source = { :path => './'}`，表示使用当前目录
* `s.platform` 修改为 `s.platform = :ios, "8.0"`
* `s.source_files`、`s.frameworks`、`s.libraries` 以及 `s.resources` 等根据实际情况修改

# Podfile 配置

## 镜像

新版的 CocoaPods 不允许用pod repo add直接添加master库来使用镜像了，但是依然可以执行以下操作来使用镜像

``` bash
cd ~/.cocoapods/repos 
pod repo remove master
git clone https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git master
```

然后，在自己工程的podFile第一行加上：

```source 'https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git'```

## 引用

以下方式任选一种
``` ruby
pod 'YourPods', :path => './YourPods'
pod 'YourPods', :podspec => 'https://xxxx/YourPods.podspec'
pod 'YourPods', :git => 'https://git.oschina.net/xxx/YourPods.git', :tag => '1.0.1'
```