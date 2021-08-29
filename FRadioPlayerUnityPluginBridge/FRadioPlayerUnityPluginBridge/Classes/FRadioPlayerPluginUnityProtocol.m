//
//  NSObject+FRadioPlayerPluginUnityProtocol.m
//  FRadioPlayerUnityPluginBridge
//
//  Created by GoEun Jeong on 2021/08/29.
//

#import <Foundation/Foundation.h>
#import "FRadioPlayerPluginUnityProtocol.h"
//#import "UnityInterface.h"

@implementation FRadioPlayerPluginUnityProtocol

//- (void)OnLoad {
//    UnitySendMessage("MyUnityPlugin", "__fromnative_OnLoad", "");
//}
//
//- (void)OnCallTestFunc1WithStr:(NSString * _Nonnull)str {
//    UnitySendMessage("MyUnityPlugin", "__fromnative_OnCallTestFunc1", [str UTF8String]);
//}
//
//- (void)OnCallTestFunc2WithNum:(NSString * _Nonnull)num {
//    UnitySendMessage("MyUnityPlugin", "__fromnative_OnCallTestFunc2", [num UTF8String]);
//}

- (void)radioPlayerWithPlayer:(FRadioPlayer * _Nonnull)player playbackStateDidChange:(enum FRadioPlaybackState)state {
    UnitySendMessage("FRadioPlayerUnityPlugin", "__fromnative_playerStateDidChange", "");
}

- (void)radioPlayerWithPlayer:(FRadioPlayer * _Nonnull)player playerStateDidChange:(enum FRadioPlayerState)state {
    UnitySendMessage("FRadioPlayerUnityPlugin", "__fromnative_playbackStateDidChange", "");
}

@end
