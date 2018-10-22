# ARAlertViewController

[![CI Status](https://img.shields.io/travis/ar.warraich@outlook.com/ARAlertViewController.svg?style=flat)](https://travis-ci.org/ar.warraich@outlook.com/ARAlertViewController)
[![Version](https://img.shields.io/cocoapods/v/ARAlertViewController.svg?style=flat)](https://cocoapods.org/pods/ARAlertViewController)
[![License](https://img.shields.io/cocoapods/l/ARAlertViewController.svg?style=flat)](https://cocoapods.org/pods/ARAlertViewController)
[![Platform](https://img.shields.io/cocoapods/p/ARAlertViewController.svg?style=flat)](https://cocoapods.org/pods/ARAlertViewController)

<img src="https://imgur.com/JShzHmL.png" width="500" height="877" />

## Requirements

- iOS 9.0
- Xcode 10.0+
- Swift 4.2+

## Installation

ARAlertViewController is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ARAlertViewController'
```
Then, run the following command:

```ruby
pod install
```
## Usage 

### Import

```swift
import ARAlertViewController
```
### Initialization
Then Go to your viewController and call as following:

to show default alert `without completion block`

```swift
self.showAlert(title: "Alert", message: "Add a message you want to show", btnTitle: "OK", alertType: .defaultAlert)
```

 `with completion block`
 
 ```swift
 self.showAlert(title: "Alert", message: "Add a message you want to show", btnTitle: "OK", alertType: .defaultAlert) {
    print("User clicked on ok button")
 }
 ```
 
 to show Custom alert `without completion block`
 
 ```swift
 self.showAlert(title: "Alert", message: "Add a message you want to show", btnTitle: "OK", alertType: .customAlert)
 ```
 
 `with completion block`
 
 ```swift
 self.showAlert(title: "Alert", message: "Add a message you want to show", btnTitle: "OK", alertType: .customAlert) {
    print("User clicked on ok button")
 }
 ```
 
there are other helpper function avalible to show alert for `Error` and `Success` 

to show `Error`

```swift
self.showErrorAlertWithMessage(message: "add error message here", alertType: .customAlert) {
    print("User clicked on Default Error ok button")
}
```

and to show `Success`
```swift
self.showSuccessAlertWithMessage(message: "Add you Success message there", alertType: .customAlert) {
    print("User clicked on success ok button")
}
```

## Author

AbdulRehman  Warraich, ar.warraich@outlook.com

## License

ARAlertViewController is released under the MIT license. [See LICENSE](https://github.com/AbdulRehmanWarraich/ARAlertViewController/blob/master/LICENSE) for details.
