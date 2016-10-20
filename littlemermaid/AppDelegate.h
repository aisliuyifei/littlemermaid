//
//  AppDelegate.h
//  littlemermaid
//
//  Created by wupeng on 10/19/16.
//  Copyright © 2016 wupeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define SCLocale(x,...) NSLocalizedString(x, nil)
#define SCUserDefault  [NSUserDefaults standardUserDefaults]
#define kLanguage @"kLanguage"
#define kAuto @"kAuto"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,retain) NSDictionary *jsonObj;
@property (retain, nonatomic) NSString *app_key;


@end

