OptionButton
===

IBDesignable option button that have vertical stacked title and option labels for iOS and tvOS.

Demo
----

![alt tag](https://github.com/cemolcay/OptionButton/blob/master/ios.png?raw=true)
![alt tag](https://github.com/cemolcay/OptionButton/blob/master/ib.png?raw=true)

Requirements
----

* Swift 3.0+
* iOS 9.0+
* tvOS 9.0+

Install
----

```
use_frameworks!
pod 'OptionButton'
```

Usage
----

* Create an instance of `OptionButton` from code, or drag and drop a `UIButton` to storyboard and change its class to `OptionButton`.
* It is a regular UIButton subclass with a stack view that have `nameLabel` and `optionLabel`.
* You could change the labels text, font and textColor from storyboard.
* Also you could set other properties from code.
* You could set the content insets from either storyboard or code by `leftInset`, `rightInset`, `topInset` and `bottomInset` properties.
