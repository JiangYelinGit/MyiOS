//
//  DarkModeViewController.m
//  MyOC
//
//  Created by jiangyelin on 2019/10/9.
//  Copyright © 2019 XinChan. All rights reserved.
//

/*
 *开发者主要从颜色和图片两个方面进行适配，我们不需要关心切换模式时该如何操作，这些都由系统帮我们实现
 *iOS13 之前 UIColor只能表示一种颜色，而从 iOS13 开始UIColor是一个动态的颜色，在Light Mode和Dark Mode可以分别设置不同的颜色。
 *图片适配
 
 *当我们强行设置当前viewController为Dark Mode后，这个viewController下的view都是Dark Mode
 *由这个ViewController present出的ViewController不会受到影响，依然跟随系统的模式
 *要想一键设置App下所有的ViewController都是Dark Mode，请直接在Window上执行overrideUserInterfaceStyle
 *对window.rootViewController强行设置Dark Mode也不会影响后续present出的ViewController的模式

 */

#import "DarkModeViewController.h"
#import "SceneDelegate.h"
@interface DarkModeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *customColorLabel;
@property (weak, nonatomic) IBOutlet UIView *layerView;
@property (weak, nonatomic) IBOutlet UILabel *richTextLabel;

@end

@implementation DarkModeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemGray2Color];
    
    //生成动态UIColor
    UIColor *customColor = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor redColor];
        } else {
            return [UIColor blueColor];
        }
    }];
    [self.customColorLabel setTextColor:customColor];
    
    //获取当前模式
    if (UITraitCollection.currentTraitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
        self.customColorLabel.text = @"黑暗模式";
    } else {
        self.customColorLabel.text = @"正常模式";
    }
    
    //富文本
    //对于UILabel、UITextField、UITextView，在设置NSAttributedString时也要考虑适配Dark Mode，否则在切换模式时会与背景色融合，造成不好的体验
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:20],NSForegroundColorAttributeName:[UIColor labelColor]};
    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithString:@"富文本文案" attributes:dic];
    self.richTextLabel.attributedText = attributedText;
}

//监听模式的改变
- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
    [super traitCollectionDidChange:previousTraitCollection];
    
    UIColor *dyColor = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor redColor];
        } else {
            return [UIColor grayColor];
        }
    }];
    
    self.layerView.layer.backgroundColor = dyColor.CGColor;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
