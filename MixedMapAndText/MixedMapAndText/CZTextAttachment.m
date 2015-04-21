//
//  CZTextAttachment.m
//  03 - 图文混排
//
//  Created by teacher on 14-12-21.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "CZTextAttachment.h"

@implementation CZTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(NSTextContainer *)textContainer proposedLineFragment:(CGRect)lineFrag glyphPosition:(CGPoint)position characterIndex:(NSUInteger)charIndex
{
    //跟字体的高度一样 lineFrag
    return CGRectMake(0,-3, lineFrag.size.height, lineFrag.size.height);
    
}
@end
