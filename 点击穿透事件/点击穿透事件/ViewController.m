//
//  ViewController.m
//  点击穿透事件
//
//  Created by Yep on 2022/8/13.
//

#import "ViewController.h"
#import "BlueButton.h"
@interface ViewController ()
@property (nonatomic, strong) BlueButton *BlueButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _PinkButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _PinkButton.frame = CGRectMake(self.view.frame.size.width / 2 - 50, self.view.frame.size.height / 2 - 50, 100, 100);
    [_PinkButton addTarget:self action:@selector(PinkTouch) forControlEvents:UIControlEventTouchUpInside];
    _PinkButton.backgroundColor = [UIColor systemPinkColor];
    [self.view addSubview:_PinkButton];
    
    self.BlueButton = [BlueButton buttonWithType:UIButtonTypeSystem];
    self.BlueButton.frame = CGRectMake(self.view.frame.size.width / 2 , self.view.frame.size.height / 2 , 100, 100);
    [self.BlueButton addTarget:self action:@selector(BlueTouch) forControlEvents:UIControlEventTouchUpInside];
    self.BlueButton.backgroundColor = [UIColor blueColor];
    self.BlueButton.PinkButton = _PinkButton;
    [self.view addSubview:self.BlueButton];
    
}

- (void)BlueTouch {
    NSLog(@"触碰蓝色按钮");
}

-(void)PinkTouch {
    NSLog(@"触碰粉色按钮");
}


@end
