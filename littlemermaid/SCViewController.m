//
//  SCViewController.m
//  littleTest
//
//  Created by wupeng on 16/10/20.
//  Copyright © 2016年 wupeng. All rights reserved.
//

#import "SCViewController.h"

@interface SCViewController ()

@end

@implementation SCViewController


-(void)playSound:(NSString *)soundName{
    NSString *path = [[NSBundle mainBundle] pathForResource:soundName ofType:@"mp3"inDirectory:nil];
    NSURL* url = [NSURL fileURLWithPath:path];
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    _audioPlayer.volume = 1;
    [_audioPlayer prepareToPlay];
    [_audioPlayer play];
    _audioPlayer.delegate = self;
}

-(void)playbgm:(NSString *)soundName{
    NSString *path = [[NSBundle mainBundle] pathForResource:soundName ofType:@"mp3"inDirectory:nil];
    NSURL* url = [NSURL fileURLWithPath:path];
    _audioPlayerBgm = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    _audioPlayerBgm.volume = 1;
    [_audioPlayerBgm prepareToPlay];
    [_audioPlayerBgm play];
}

-(void)playSoundEffect:(NSString *)soundName{
    NSString *path = [[NSBundle mainBundle] pathForResource:soundName ofType:@"wav"inDirectory:nil];
    NSURL* url = [NSURL fileURLWithPath:path];
    _audioPlayerSoundEffect = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    _audioPlayerSoundEffect.volume = 1;
    [_audioPlayerSoundEffect prepareToPlay];
    [_audioPlayerSoundEffect play];
}


@end
