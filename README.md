

#  CustomSwitch


##一个自定义的Switch开关按钮,中间的按钮可以加图片,并有开关汉字提示

		使用时只需传入颜色图片,初始化开关的按钮不再是固定的大小,但是我规定了height为32,需要的可以自行修改后使用
	
```	
 CQSwitchControl *CQswitch = [[CQSwitchControl alloc]initWithFrame:CGRectMake(100, 100, 80, 60)];
    CQswitch.OnTapImage = [UIImage imageNamed:@"Switch-on"];
    CQswitch.OffTapImage = [UIImage imageNamed:@"Switch-OF"];
    CQswitch.TapBackColor = [UIColor orangeColor];
    CQswitch.BackColor = [UIColor cyanColor];
    CQswitch.OnColor = [UIColor greenColor];
    CQswitch.OffColor = [UIColor grayColor];
    CQswitch.CQDelegate = self;
    [self.view addSubview:CQswitch];
```

