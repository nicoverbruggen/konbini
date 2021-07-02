# Konbini

Opinionated **convenience** methods and helpers for Swift.

## JSON

Using the `JSON` helper, you can easily convert an `Encodable` type to JSON (as a UTF-8 `String`) or back. Here's an example:

**Encoding**:

*Note*: The `String` that is returned is encoded using UTF-8. The data we're trying to encode must conform to the `Encodable` protocol.

```swift
let string = JSON.encode([1, 2, 3]) // returns "[1,2,3]"
```

**Decoding**

*Note*: This assumes the `String` is encoded using UTF-8. The data we're trying to decode must conform to the `Decodable` type, which must be specified.

```swift
let integers = JSON.decode(data, type: [Int].self)
```

