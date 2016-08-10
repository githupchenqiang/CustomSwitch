//
//  CQSwitchControl.h
//  CQSwitch
//
//  Created by chenq@kensence.com on 15/8/8.
//  Copyright © 2015年 chenq@kensence.com. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CQSwitchControl;
@protocol CQSwitchDelegate <NSObject>
@required

/**
 *  按钮的不同状态处理时间
 *
 *  @param tapSwitch 点击滑块触发事件
 *  @param isOn      default NO
 */
- (void)TapSwitchShouldDoAction:(CQSwitchControl *)tapSwitch isOn:(BOOL)isOn;

@end

@interface CQSwitchControl : UIView


/**
 *  整体的背景色
 */
@property (nonatomic ,strong)UIColor *BackColor;

/**
 *  开关状态
 */
@property (nonatomic ,assign)BOOL isOn;

/**
 *  开启时的背景图片
 */
@property (nonatomic ,strong)UIImage *OnImage;


/**
 *  关闭时的背景图片
 */
@property (nonatomic ,strong)UIImage *OffImage;
/**
 *  处于开时 的背景色
 */
@property (nonatomic ,strong)UIColor *OnColor;

/**
 *  关闭时的背景色
 */
@property (nonatomic ,strong)UIColor *OffColor;

/**
 *  控件的背景色
 */
@property (nonatomic ,strong)UIColor *SwitchColor; //开关按钮的背景色


/**
 *  处于开时的中间滑块的图片
 */
@property (nonatomic ,strong)UIImage *OnTapImage;


/**
 *  关闭时中间按钮图片
 */
@property (nonatomic ,strong)UIImage *OffTapImage;

/**
 *  中间滑块的背景色
 */
@property (nonatomic ,strong)UIColor *TapBackColor;

/**
 *  打开时显示的字
 */
@property (nonatomic ,strong)NSString *SwichOnText;


/**
 *  关闭状态的文字
 */
@property (nonatomic ,strong)NSString *SwitchOFFText;

@property (nonatomic ,weak)id <CQSwitchDelegate>CQDelegate;


/**
 *  初始化视图
 *
 *  @param frame frame的大小为整体控件的大小 固定高度为38 长度可设定
 *
 *  @return self
 */
-(instancetype)initWithFrame:(CGRect)frame;

@end
