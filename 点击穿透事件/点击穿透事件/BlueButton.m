//
//  BlueButton.m
//  点击穿透事件
//
//  Created by Yep on 2022/8/13.
//

#import "BlueButton.h"

@implementation BlueButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    CGPoint PinkButtonPoint = [self convertPoint:point toView:_PinkButton];
    if ([_PinkButton pointInside:PinkButtonPoint withEvent:event]) {
        return _PinkButton;
    }
    //如果希望严谨一点，可以将上面if语句及里面代码替换成如下代码
    //UIView *view = [_redButton hitTest: redBtnPoint withEvent: event];
    //if (view) return view;
    return [super hitTest:point withEvent:event];
}
@end
