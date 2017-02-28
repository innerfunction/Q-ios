# Q-ios
An asynchronous promise implementation for iOS.

Inspired by the [Q asynchronous library for node](https://github.com/kriskowal/q), this library provides a partial implementation of the [Promises/A+ spec](https://promisesaplus.com/).

# Installation
Install using CocoaPods:
```ruby
pod 'Q'
```

# Usage
Create a new promise:
```objective-c
#import "Q.h"
...
QPromise *promise = [QPromise new];
```

Later, resolve the promise with a result value:
```objective-c
id value = "something";
[promise resolve:value];
```

Or reject the promise with an error:
```objective-c
NSError *error = [self raiseError];
[promise reject:error];
```
Promise continuations can be supplied using blocks:
```objective-c
QPromise *promise = [self asynchronousOp];
promise.then((id)^(id result) {
  // Use result.
})
.fail(^(id error) {
  // Handle error.
});
```

Promises can be chained:
```objective-c
QPromise *promise = [QPromise new];
promise.then((id)(^id result) {
    return [QPromise resolve:"a result!"];
});
```

Create a resolved promise:
```objective-c
QPromise *resolved = [QPromise resolve:"a result!"];
```

Or create a rejected promise:
```objective-c
QPromise *rejected = [QPromise reject:"obsolete"];
```

## Gotchas
A _then_ block must return a value. If you fail to do this, then XCode will not generate an error or warning when the code is compiled, but the code will crash with a BAD_ACCESS exception when run:
```objective-c
promise.then((id)^(id result) {
  // No return statement here, code will crash!
});
```
This can be a particularly easy mistake to make when a _then_ block is the final step in a calculation and doesn't generate any particular result; in these cases, the block should return _nil_.

# Status
This project is currently released as beta code; however, it is fairly well tested and has been used in a number of production projects.
