//
//  NSAttributedString+Emoji.m
//  MiYa
//
//  Created by GX on 14/12/18.
//  Copyright (c) 2014年 WLA. All rights reserved.
//

#import "NSAttributedString+Emoji.h"
#import <UIKit/UIKit.h>

@interface EmojiAttachment : NSTextAttachment

@end

@implementation EmojiAttachment

//I want my emoticon has the same size with line's height
- (CGRect)attachmentBoundsForTextContainer:(NSTextContainer *)textContainer proposedLineFragment:(CGRect)lineFrag glyphPosition:(CGPoint)position characterIndex:(NSUInteger)charIndex
{
    return CGRectMake( 0 , -3, lineFrag.size.height, lineFrag.size.height);
}

@end


@implementation NSAttributedString (Emoji)

+ (NSAttributedString *)emojiStringWithString:(NSMutableAttributedString *)emojiString
{
    NSRegularExpression *regularEx = [NSRegularExpression regularExpressionWithPattern:@"s[0-9]{3}" options:NSRegularExpressionCaseInsensitive error:nil];
    NSString *string = emojiString.string;
    NSTextCheckingResult *result = [regularEx firstMatchInString:string options:NSMatchingReportCompletion range:NSMakeRange(0, string.length)];
    if (result != nil) {
        NSString *imageName = [NSString stringWithFormat:@"%@.png", [string substringWithRange:result.range]];
        EmojiAttachment *attachment = [[EmojiAttachment alloc] initWithData:nil ofType:nil];
        attachment.image = [UIImage imageNamed:imageName];
        NSAttributedString *attrString = [NSAttributedString attributedStringWithAttachment:attachment];
        [emojiString replaceCharactersInRange:result.range withAttributedString:attrString];
        // 递归
        [self emojiStringWithString:emojiString];
    } else {
        return emojiString;
    }
    return emojiString;
}

@end
