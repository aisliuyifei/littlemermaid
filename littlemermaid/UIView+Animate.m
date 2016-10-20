//
//  NSObject+RandomCompair.m
//  jy1
//
//  Created by wupeng on 5/1/16.
//  Copyright © 2016 wupeng. All rights reserved.
//

#import "UIView+Animate.h"


@implementation UIView(Animate)

- (void)showFromLeft:(CGFloat)x{
    [self showFromDX:-x andDY:0];
}

- (void)showFromUp:(CGFloat)y{
    [self showFromDX:0 andDY:-y];
}

- (void)showFromRight:(CGFloat)x{
    [self showFromDX:x andDY:0];
}

- (void)showFromDown:(CGFloat)y{
    [self showFromDX:0 andDY:y];

}

-(void)showFromDX :(CGFloat)dx andDY :(CGFloat)dy{
    CGRect rect = self.frame;
    CGRect rectStart = CGRectMake(rect.origin.x+dx, rect.origin.y+dy, rect.size.width, rect.size.height);
    [self setFrame:rectStart];
    [self setHidden:NO];
    [self setAlpha:0];
    
    [UIView animateWithDuration:0.6f
                          delay:0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^
     {
         self.alpha = 1;
         self.frame = rect;
         
     } completion:^(BOOL finished){
     }];
}
- (void)moveTo:(CGRect)rect{
    [UIView animateWithDuration:0.6f
                          delay:0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^
     {
         self.frame = rect;
     } completion:^(BOOL finished){
     }];
}

- (void)moveLeft:(CGFloat)x{
    [self moveTo:CGRectMake(self.frame.origin.x-x, self.frame.origin.y, self.frame.size.width, self.frame.size.height)];
}
- (void)moveRight:(CGFloat)x{
    [self moveTo:CGRectMake(self.frame.origin.x+x, self.frame.origin.y, self.frame.size.width, self.frame.size.height)];
}
- (void)moveUp:(CGFloat)y{
    [self moveTo:CGRectMake(self.frame.origin.x, self.frame.origin.y-y, self.frame.size.width, self.frame.size.height)];

}
- (void)moveDown:(CGFloat)y{
    [self moveTo:CGRectMake(self.frame.origin.x, self.frame.origin.y+y, self.frame.size.width, self.frame.size.height)];

}

-(void)bling{
    [UIView animateWithDuration:0.35f
                          delay:0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^
     {
         self.alpha = 0.2;
     } completion:^(BOOL finished){
         [UIView animateWithDuration:0.35f
                               delay:0
                             options:UIViewAnimationOptionCurveEaseIn
                          animations:^
          {
              self.alpha = 1.0;
          } completion:^(BOOL finished){
          }];
     }];
}

-(void)bounce{
    self.alpha =0.99; //MAGIC NUMBER;
    CGRect originalRect = [self frame];
    CGRect newRect = CGRectMake(self.frame.origin.x-self.frame.size.width*0.1, self.frame.origin.y-self.frame.size.height*0.1, self.frame.size.width*1.2, self.frame.size.height*1.2);
    
    [UIView animateWithDuration:0.5f
                          delay:0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^
     {
         self.frame = newRect;
     } completion:^(BOOL finished){
         self.frame = originalRect;
          if ([self alpha]!=1) {
              [self bounce];
          }
     }];
}

-(void)stopBounce{
    if (self.alpha!=0) {
        self.alpha = 1;
    }
}

@end
