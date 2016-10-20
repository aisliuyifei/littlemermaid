//
//  NSObject+RandomCompair.h
//  jy1
//
//  Created by wupeng on 5/1/16.
//  Copyright © 2016 wupeng. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIView(Animate)
- (void)showFromLeft:(CGFloat)x;
- (void)showFromUp:(CGFloat)y;
- (void)showFromRight:(CGFloat)x;
- (void)showFromDown:(CGFloat)y;
- (void)moveTo:(CGRect)rect;
- (void)moveLeft:(CGFloat)x;
- (void)moveRight:(CGFloat)x;
- (void)moveUp:(CGFloat)y;
- (void)moveDown:(CGFloat)y;
- (void)bling;
- (void)bounce;
- (void)stopBounce;

@end

