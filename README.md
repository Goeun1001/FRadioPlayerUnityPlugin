# FRadioPlayerUnityPlugin-ios

- objc wrapper

```objective-c
void __IOS_Initialize()
    {
        FRadioPlayerPluginUnityProtocol *callback = [[FRadioPlayerPluginUnityProtocol alloc] init];
        [[FRadioPlayer shared] setDelegate:callback];
    }

    void __IOS_SetRadioURL(const char* str) {
        NSString *strNS = NSStringFromCString(str);
        [[FRadioPlayer shared] setRadioURL: [NSURL URLWithString:strNS]];
    }

    void __IOS_Play() {
        [[FRadioPlayer shared] play];
    }

    void __IOS_Stop() {
        [[FRadioPlayer shared] stop];
    }
```

- Unity

```csharp
				[DllImport("__Internal")]
        internal static extern void __IOS_Initialize();
        [DllImport("__Internal")]
        internal static extern void __IOS_SetRadioURL(string str);
        [DllImport("__Internal")]
        internal static extern void __IOS_Play();
        [DllImport("__Internal")]
        internal static extern void __IOS_Stop();
```



참고: [유니티용 Plugin 만들기 : iOS편 (Swift)](https://medium.com/sunriv/%EC%9C%A0%EB%8B%88%ED%8B%B0%EC%9A%A9-plugin-%EB%A7%8C%EB%93%A4%EA%B8%B0-ios%ED%8E%B8-swift-de97c8449012)

