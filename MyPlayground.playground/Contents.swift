class MyClass {
  var contents = ""
    func isEqual(other: MyClass?) -> Bool {
        guard let compareTo = other else {
            return false
        }
        
        if compareTo === self {
         return true
        }
        
        return true
    }
    
}

var a = MyClass()
var b = MyClass()

a.isEqual(b)

