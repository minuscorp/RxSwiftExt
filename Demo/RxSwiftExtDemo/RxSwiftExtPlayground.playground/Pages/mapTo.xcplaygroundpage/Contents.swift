/*:
 > # IMPORTANT: To use `RxSwiftExtPlayground.playground`, please:
 
 1. Build `RxSwiftExt` scheme for a simulator target
 1. Build `RxSwiftExtDemo` scheme for a simulator target
 1. Choose `View > Show Debug Area`
 */

//: [Previous](@previous)

import RxSwift
import RxSwiftExt

/*:
 ## mapTo(Any)
 
 The `mapTo` operator takes a sequence of elements and returns a sequence of the same constant provided as a parameter. In effect it ignores its input and replaces it with a constant
 */
example("replace any input with a value") {
    
    let numbers = Array<Int?>([1, 2, 3])
    numbers.toObservable()
        .mapTo("candy")
        .toArray()
        .subscribeNext {result in
            // look types on the right panel ===>
            numbers
            result
            print("mapTo() transformed \(numbers) to \(result)")
    }
}


//: [Next](@next)
