// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

func callDynamicLibraryFunction(functionName: String) -> String? {
    // Replace with the path to your dynamic library
    let libraryPath = "liblogo.dylib"
    
    // Replace with the name of your function
    let functionName = functionName
    
    // Open the dynamic library
    guard let handle = dlopen(libraryPath, RTLD_NOW) else {
        print("Unable to open library: \(String(cString: dlerror()))")
        return nil
    }
    
    // Get the function from the library
    guard let function = dlsym(handle, functionName) else {
        print("Unable to find function: \(String(cString: dlerror()))")
        dlclose(handle)
        return nil
    }
    
    // Define the function type
    typealias CFunction = @convention(c) () -> UnsafePointer<CChar>
    
    // Cast the function to the correct type
    let functionTyped = unsafeBitCast(function, to: CFunction.self)
    
    // Call the function and get the result
    let result = functionTyped()

    // Check if the result is a null pointer
    if result == nil {
        print("Function returned a null pointer")
        dlclose(handle)
        return nil
    }

    // Try to create a Swift string from the result
    guard let stringResult = String(validatingUTF8: result) else {
        print("Function returned an invalid string")
        dlclose(handle)
        return nil
    }

    // Close the library
    dlclose(handle)

    // Return the result as a Swift string
    return stringResult
}

if let result = callDynamicLibraryFunction(functionName: "logo") {
    print("\(result)")
} else {
    print("Failed to call function")
}
if let result = callDynamicLibraryFunction(functionName: "logo_black") {
    print("\(result)")
} else {
    print("Failed to call function")
}