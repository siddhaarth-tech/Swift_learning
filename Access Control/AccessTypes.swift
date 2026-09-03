// Swift Access Control - All 6 Levels

private class PrivateClass {
    private var privateValue = "Private"
    
    func show() {
        print(privateValue)
    }
}

fileprivate class FilePrivateClass {
    fileprivate var filePrivateValue = "Fileprivate"
    
    func show() {
        print(filePrivateValue)
    }
}

internal class InternalClass {
    internal var internalValue = "Internal"
    
    func show() {
        print(internalValue)
    }
}
//
//package class PackageClass {
//    package var packageValue = "Package"
//
//    package func show() {
//        print(packageValue)
//    }
//}

public class PublicClass {
    public var publicValue = "Public"
    
    public func show() {
        print(publicValue)
    }
}

open class OpenClass {
    open var openValue = "Open"
    
    open func show() {
        print(openValue)
    }
}




fileprivate let privateObject = PrivateClass()
privateObject.show()

private let filePrivateObject = FilePrivateClass()
filePrivateObject.show()

let internalObject = InternalClass()
internalObject.show()

//let packageObject = PackageClass()
//packageObject.show()

let publicObject = PublicClass()
publicObject.show()

let openObject = OpenClass()
openObject.show()
