//
//  ViewController.m
//  MixedMapAndText
//
//  Created by zhangxiaoliang on 15/4/21.
//  Copyright (c) 2015年 zhangxiaoliang. All rights reserved.
//

#import "ViewController.h"
#import "CZTextAttachment.h"
#import "NSAttributedString+Emoji.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
#warning mark - 以下是通过属性字符串的分类实现的图文混排
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0,320, 400)];
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor whiteColor];
    
    label.text = @"女神:在吗?s014s014s014s014s014s014s014s014我想你了 s010约吗? s014 ahajbsjdbs012我们家没人  在吗?s014s014s014s014s014s014s014s014我想你了 s010约吗? s014 ahajbsjdbs012在吗?s014s014s014s014s014s014s014s014我想你了 s010约吗? s014 ahajbsjdbs012在吗?s014s014s014s014s014s014s014s014我想你了 s010约吗? s014 ahajbsjdbs012在吗?s014s014s014s014s014s014s014s014我想你了 s010约吗? s014 ahajbsjdbs012";
    
    //初始化属性字符串
    NSMutableAttributedString *mAttributedString = [[NSMutableAttributedString alloc]initWithString:label.text];
    
    
    label.attributedText = [NSAttributedString emojiStringWithString:mAttributedString];
    
    [self.view addSubview:label];
    
    
#warning mrak - 以下是基本实现示例
    /*
     UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0,320, 400)];
     label.backgroundColor = [UIColor orangeColor];
     
     label.text = @"女神:在吗?我想你了 s010约吗? s014 ahajbsjdbs012";
     
     
     [self.view addSubview:label];
     
     //[微笑] s010.png
     
     //聊天文字  不确定
     
     //动态看  正则表达式
     NSString *pattern = @"s[0-9]{3}";
     
     //1.正则规则
     NSRegularExpression *regular = [[NSRegularExpression alloc]initWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:nil];
     
     //2.匹配结果
     NSTextCheckingResult *result =  [regular firstMatchInString:label.text options:NSMatchingReportCompletion range:NSMakeRange(0, label.text.length)];
     
     
     NSLog(@"%@",[label.text substringWithRange:result.range]);
     
     //3.截取的字串   把这个字串替换成 带表情的 属性字符串
     NSString *smail =  [label.text substringWithRange:result.range];
     
     
     //附件对象
     CZTextAttachment *textAttachment = [[CZTextAttachment alloc]init];
     textAttachment.image = [UIImage imageNamed:smail];
     
     //属性字符串
     NSAttributedString *attributedString = [NSAttributedString attributedStringWithAttachment:textAttachment];
     
     NSMutableAttributedString *mAttributedString = [[NSMutableAttributedString alloc]init];
     //    [mAttributedString appendAttributedString:attributedString];
     
     NSAttributedString *str = [[NSAttributedString alloc]initWithString:label.text];
     
     [mAttributedString appendAttributedString:str];
     
     //替换
     [mAttributedString replaceCharactersInRange:result.range withAttributedString:attributedString];
     
     //设置属性字符串
     label.attributedText = mAttributedString;
     
     
     //递归
     
     */
    /*
     
     //1.文本附件 用来添加图片
     CZTextAttachment *textAttachment = [[CZTextAttachment alloc]init];
     textAttachment.image = [UIImage imageNamed:@"s010.png"];
     
     //2.属性字符串  用文本附件对象初始化一个属性字符串
     NSAttributedString *attributedString  = [NSAttributedString attributedStringWithAttachment:textAttachment];
     
     //文本附件 用来添加图片
     CZTextAttachment *textAttachment14 = [[CZTextAttachment alloc]init];
     textAttachment14.image = [UIImage imageNamed:@"s014.png"];
     
     //属性字符串  用文本附件对象初始化一个属性字符串
     NSAttributedString *attributedString14  = [NSAttributedString attributedStringWithAttachment:textAttachment14];
     
     //拼接所有的属性字符串
     NSMutableAttributedString *mAttributedString = [[NSMutableAttributedString alloc]init];
     
     
     [mAttributedString appendAttributedString:attributedString];
     NSAttributedString *text1 =  [[NSAttributedString alloc]initWithString:@"去吃饭吗?"];
     [mAttributedString appendAttributedString:text1];
     
     [mAttributedString appendAttributedString:attributedString14];
     
     NSAttributedString *text =  [[NSAttributedString alloc]initWithString:@"女神:在吗?约吗?"];
     [mAttributedString appendAttributedString:text];
     
     
     
     label.attributedText = mAttributedString;
     
     */

    
    
    
}

@end
