//
//  CQSwitchControl.h
//  CQSwitch
//
//  Created by chenq@kensence.com on 16/8/8.
//  Copyright © 2016年 chenq@kensence.com. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CQSwitchControl;
@protocol CQSwitchDelegate <NSObject>
@required

/**
 * @parm 点击控件时的同步事件
 *
 *
 */
 
- (void)TapSwitchShouldDoAction:(CQSwitchControl *)tapSwitch isOn:(BOOL)isOn;

@end

@interface CQSwitchControl : UIView
@property (nonatomic ,strong)UIColor *BackColor; //整体背景
@property (nonatomic ,assign)BOOL isOn; //开关
@property (nonatomic ,strong)UIImage *OnImage; //开时的背景图片
@property (nonatomic ,strong)UIImage *OffImage; //关是的背景图片
@property (nonatomic ,strong)UIColor *OnColor; //开始的背景色
@property (nonatomic ,strong)UIColor *OffColor; //关时的背景色
@property (nonatomic ,strong)UIColor *SwitchColor; //开关按钮的背景色
@property (nonatomic ,strong)UIImage *OnTapImage; //开关按钮的image;
@property (nonatomic ,strong)UIImage *OffTapImage; //处于关闭时的按钮
@property (nonatomic ,strong)UIColor *TapBackColor; //按钮的背景色
@property (nonatomic ,weak)id <CQSwitchDelegate>CQDelegate;

-(instancetype)initWithFrame:(CGRect)frame;

@end
