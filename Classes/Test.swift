//如果不需要支持oc调用，不用继承NSObject与添加@objc
public class Test :NSObject {
    @objc public class func test() -> String {
        return "aaaa"
    }
}