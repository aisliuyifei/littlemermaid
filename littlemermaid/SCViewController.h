//
//  SCViewController.h
//  littleTest
//
//  Created by wupeng on 16/10/20.
//  Copyright © 2016年 wupeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "AppDelegate.h"
#import "UIView+Animate.h"
@interface SCViewController : UIViewController<AVAudioPlayerDelegate>{
    AVAudioPlayer *_audioPlayer;
    AVAudioPlayer *_audioPlayerBgm;
    AVAudioPlayer *_audioPlayerSoundEffect;

}
-(void)playStory:(NSString *)soundName;
-(void)playbgm:(NSString *)soundName;
-(void)playSoundEffect:(NSString *)soundName;


@end
