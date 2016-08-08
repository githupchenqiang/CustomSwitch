//
//  ViewController.m
//  CQSwitch
//
//  Created by chenq@kensence.com on 16/8/8.
//  Copyright © 2016年 chenq@kensence.com. All rights reserved.
#import "ViewController.h"
#import "CQSwitchControl.h"

@interface ViewController ()<CQSwitchDelegate>
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CQSwitchControl *CQswitch = [[CQSwitchControl alloc]initWithFrame:CGRectMake(100, 100, 80, 60)];
    CQswitch.OnTapImage = [UIImage imageNamed:@"Switch-on"];
    CQswitch.OffTapImage = [UIImage imageNamed:@"Switch-OF"];
    CQswitch.TapBackColor = [UIColor orangeColor];
    CQswitch.BackColor = [UIColor cyanColor];
    CQswitch.OnColor = [UIColor greenColor];
    CQswitch.OffColor = [UIColor grayColor];
    CQswitch.CQDelegate = self;
    [self.view addSubview:CQswitch];
}

-(void)TapSwitchShouldDoAction:(CQSwitchControl *)tapSwitch isOn:(BOOL)isOn
{
    if (isOn == YES) {
        NSLog(@"打开");
    }else
    {
        NSLog(@"关闭");
        
    }
}





- (void)SwitchACtion:(id)sender
{
    NSLog(@"陈强");
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
