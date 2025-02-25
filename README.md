# RAnalytics
Records user activity and automatically sends tracking events to an analytics cloud service.

## Minimum version
Supports iOS 11.0 and above and has been tested with iOS 11.1 and above.

## Users
It is intended to be used only by Rakuten approved applications.
 
## Installing with CocoaPods
To use the module in its default configuration your `Podfile` should contain:
 
```ruby
pod 'RAnalytics', :source => 'https://github.com/rakutentech/ios-analytics-framework.git'
```

To use a specific version of the module e.g. `1.0.0` your `Podfile` should contain:

```ruby
pod 'RAnalytics', '1.0.0', :source => 'https://github.com/rakutentech/ios-analytics-framework.git'
```
 
Run `pod install` to install the module and dependencies.
 
## Configuring
Applications must configure their `Info.plist` as follows:
 
Key         | Value
-------------------|-------------------
`RATAccountIdentifier` | `YOUR_RAT_ACCOUNT_ID` (Number)
`RATAppIdentifier` | `YOUR_RAT_APPLICATION_ID` (Number)
`RATEndpoint` | `YOUR_ENDPOINT` (String)
 
For more information (including full configuration instructions, how to get support, API usage, and a full change log) please visit the internal documentation site of the `RAnalytics` SDK or raise an inquiry with your Rakuten contact.
