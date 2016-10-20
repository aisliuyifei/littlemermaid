//
//  HomePageViewController.m
//  littleTest
//
//  Created by wupeng on 16/10/20.
//  Copyright © 2016年 wupeng. All rights reserved.
//

#import "HomePageViewController.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateLanguageSetting];
    [self updatePageFlipSetting];
    [buttonAuto addTarget:self action:@selector(buttonAutoClicked:) forControlEvents:UIControlEventTouchUpInside];
    [buttonManual addTarget:self action:@selector(buttonManualClicked:) forControlEvents:UIControlEventTouchUpInside];

    [buttonCn addTarget:self action:@selector(buttonCnClicked:) forControlEvents:UIControlEventTouchUpInside];

    [buttonEn addTarget:self action:@selector(buttonEnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [buttonStart addTarget:self action:@selector(buttonStartClicked:) forControlEvents:UIControlEventTouchUpInside];

    
    // Do any additional setup after loading the view.
}

-(void)updateLanguageSetting{
    NSString *languageStr = [SCUserDefault objectForKey:kLanguage] ? [SCUserDefault objectForKey:kLanguage] : @"1";
    [imageLanguage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"语言%@.png",languageStr]]];
    
    [imagePageFilp setImage:[UIImage imageNamed:[NSString stringWithFormat:@"翻页%@.png",languageStr]]];
    
    [buttonAuto setImage:[UIImage imageNamed:[NSString stringWithFormat:@"自动%@1.png",languageStr]] forState:UIControlStateNormal];
    [buttonAuto setImage:[UIImage imageNamed:[NSString stringWithFormat:@"自动%@2.png",languageStr]] forState:UIControlStateSelected];
    [buttonManual setImage:[UIImage imageNamed:[NSString stringWithFormat:@"手动%@1.png",languageStr]] forState:UIControlStateNormal];
    [buttonManual setImage:[UIImage imageNamed:[NSString stringWithFormat:@"手动%@2.png",languageStr]] forState:UIControlStateSelected];
    [buttonStart setImage:[UIImage imageNamed:[NSString stringWithFormat:@"读%@.png",languageStr]] forState:UIControlStateNormal];

    
    if ([languageStr intValue]==1) {
        //cn
        [imageTitle setImage:[UIImage imageNamed:@"normal_title_sc.png"]];

        [buttonCn setImage:[UIImage imageNamed:@"简2.png"] forState:UIControlStateNormal];
        [buttonEn setImage:[UIImage imageNamed:@"E1.png"] forState:UIControlStateNormal];
        
    }else{
        //en
        [imageTitle setImage:[UIImage imageNamed:@"normal_title_en.png"]];

        [buttonCn setImage:[UIImage imageNamed:@"简1.png"] forState:UIControlStateNormal];
        [buttonEn setImage:[UIImage imageNamed:@"E2.png"] forState:UIControlStateNormal];
        
    }
    
}

-(void)updatePageFlipSetting{
    if ([[SCUserDefault objectForKey:kAuto] intValue] == 1) {
        // 自动
        [buttonAuto setSelected:YES];
        [buttonManual setSelected:NO];
    }else{
        //手动
        
        [buttonManual setSelected:YES];
        [buttonAuto setSelected:NO];
    }
}

-(void)buttonCnClicked:(id)sender{
    [SCUserDefault setObject:@"1" forKey:kLanguage];
    [self updateLanguageSetting];
}

-(void)buttonEnClicked:(id)sender{
    [SCUserDefault setObject:@"3" forKey:kLanguage];
    [self updateLanguageSetting];
    
}

-(void)buttonAutoClicked:(id)sender{
    [SCUserDefault setObject:@"1" forKey:kAuto];
    [self updatePageFlipSetting];
    
}

-(void)buttonManualClicked:(id)sender{
    [SCUserDefault setObject:@"0" forKey:kAuto];
    [self updatePageFlipSetting];
}

-(void)buttonStartClicked:(id)sender{
    
}

@end
