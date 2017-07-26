#设置 Specs 镜像
source 'https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git'
# Uncomment this line to define a global platform for your project
platform :ios, '8.0'
# Uncomment this line if you're using Swift
use_frameworks!
# 不显示第三方库的警告
inhibit_all_warnings!

def myPods
    pod 'MBProgressHUD', '~> 1.0.0'
end

target 'TargetA' do
    myPods
end

target 'TargetB' do
    myPods
end

#每次执行install时，修改编译配置
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
            config.build_settings['SWIFT_VERSION'] = '2.3'
        end
    end
end
