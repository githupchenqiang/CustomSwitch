//
//  CQSwitchControl.m
//  CQSwitch
//
//  Created by chenq@kensence.com on 16/8/8.
//  Copyright © 2016年 chenq@kensence.com. All rights reserved.
//

#import "CQSwitchControl.h"

@interface CQSwitchControl ()
{
    UIImageView *ImageView;
    UIImageView *tapImage;
    UILabel *label;
}

@end

@implementation CQSwitchControl
-(instancetype)initWithFrame:(CGRect)frame
{
    
    if (self = [super initWithFrame:frame]) {
        UIView *backview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        backview.backgroundColor = self.BackColor;
        [self addSubview:backview];
        
        ImageView = [[UIImageView alloc]init];
        if (frame.size.width < 48) {
            ImageView.frame = CGRectMake(0,0, 64,32);
        }else
        {
            ImageView.frame = CGRectMake(0,0, frame.size.width, 32
                                         );
        }
        UIImage *image = self.OnImage;
        image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        ImageView.image = self.OnImage;
        ImageView.layer.cornerRadius = 16;
        ImageView.layer.masksToBounds = YES;
        ImageView.layer.borderColor = [UIColor blackColor].CGColor;
        ImageView.layer.borderWidth = 0.2;
        ImageView.backgroundColor = [UIColor grayColor];
        if (self.OffColor != nil) {
            ImageView.backgroundColor = self.OffColor;
        }
        [self addSubview:ImageView];
      
        label = [[UILabel alloc]init];
        label.frame = CGRectMake(frame.size.width - 32, 0 ,32,32);
        label.text = @"关";
        [self addSubview:label];
    
        tapImage = [[UIImageView alloc]init];
        if (frame.size.width > 48) {
            tapImage.frame = CGRectMake(-1, -1, 34, 34);
        }else
        {
            tapImage.frame = CGRectMake(-1, 0, 34,34);
        }
        tapImage.layer.cornerRadius = 17;
        tapImage.layer.masksToBounds = YES;
        tapImage.backgroundColor = [UIColor orangeColor];
        if (self.TapBackColor != nil) {
            tapImage.backgroundColor = self.TapBackColor;
        }
        self.isOn = NO;
        
        UIImage *tapimage = [UIImage imageNamed:@"Switch-OF"];
        tapimage = [tapimage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        tapImage.image = tapimage;
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(TapAction:)];
        tapGesture.numberOfTapsRequired = 1;
        tapImage.userInteractionEnabled = YES;
        [tapImage addGestureRecognizer:tapGesture];
        [self addSubview:tapImage];
    }
    
    return self;
}

- (void)TapAction:(id *)tap
{
    if (self.isOn == NO) {
        self.isOn = YES;
        ImageView.backgroundColor = [UIColor greenColor];
        ImageView.image = self.OnImage;
        ImageView.backgroundColor = self.OnColor;
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.3];
        UIImage *tapimage = self.OnTapImage;
        tapimage = [tapimage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        tapImage.image = tapimage;
        [tapImage setFrame:CGRectMake(ImageView.frame.size.width - 34,ImageView.frame.origin.y-1, 34, 34)];
        [label setFrame:CGRectMake(ImageView.frame.origin.x + 10 ,ImageView.frame.origin.y, 32, 32)];
        label.text = @"开";
        [UIView commitAnimations];
    
    }else
    {
        self.isOn = NO;
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.3];
        ImageView.backgroundColor = [UIColor grayColor];
        ImageView.image = self.OnImage;
        UIImage *tapimage = self.OffTapImage;
        tapimage = [tapimage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        tapImage.image = tapimage;
        [tapImage setFrame:CGRectMake((ImageView.frame.origin.x),ImageView.frame.origin.y-1, 34,34)];
        [label setFrame:CGRectMake(ImageView.frame.size.width - 34,ImageView.frame.origin.y, 32, 32)];
        label.text = @"关";
        [UIView commitAnimations];
        ImageView.backgroundColor = self.OffColor;
    }
    if (_CQDelegate != nil && [_CQDelegate respondsToSelector:@selector(TapSwitchShouldDoAction:isOn:)]) {
        [_CQDelegate TapSwitchShouldDoAction:self isOn:self.isOn];
    }
    
    
}
@end
