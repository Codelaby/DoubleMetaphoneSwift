# DoubleMetaphoneSwift
This is an implementation of the Double Metaphone algorithm in Swift. The algorithm was originally coded by Lawrence Philips.


## Installation
DoubleMetaphoneSwift can be installed with the Swift Package Manager:
```ruby
https://github.com/Codelaby/DoubleMetaphoneSwift.git
```

## Usage
Import DoubleMetaphoneSwift at the top of the Swift file.

```swift
import DoubleMetaphoneSwift
```

The returned Double Metaphone calculation returns the primary and secondary calculations as a tuple.
```swift
guard let (primary, secondary) = DoubleMetaphoneSwift.calculate(input: "Hello World!") else {
    print("Failed to calculate...")
    return
}

print("Primary: \(primary)")      // Primary: HLRL
print("Secondary: \(secondary)")  // Secondary: HLRL
```

