//
//  NSString+RegexKitLite.m
//  Open2.0
//
//  Created by xyzq on 16/10/15.
//  Copyright © 2016年 Young. All rights reserved.
//

#import "NSString+RegexKitLite.h"

@implementation NSString (RegexKitLite)
+(BOOL)realNameCheck:(NSString *)name {
    NSString *regex = @"^[\u4e00-\u9fa5]{1,6}+$";
    return [name isMatchedByRegex:regex];
}

+(BOOL)phoneNumCheck:(NSString *)phoneNum{
    NSString *regex = @"^(13[0-9]|14[0-9]|15[0|1|2|3|5|6|7|8|9]|18[0|2|5|6|7|8|9])\\d{8}$";
    return [phoneNum isMatchedByRegex:regex];
}

+(BOOL)mobileCheck:(NSString *)mobile
{
    NSString *regex = @"^\\d{11}$";
    return [mobile isMatchedByRegex:regex];
}

+(BOOL)callNumCheck:(NSString*)callNo {
    NSString *regex = @"^[0-9]{3}-[0-9]{8}|[0-9]{4}-[0-9]{7}|[0-9]{4}-[0-9]{8}$";
    return [callNo isMatchedByRegex:regex];
}

+(BOOL)idNumCheck:(NSString *)idNo
{
    NSString *regex = @"^(\\d{15}$|^\\d{18}$|^\\d{17}(\\d|[xX]))$";
    return [idNo isMatchedByRegex:regex];
}

+(BOOL)userNameCheck:(NSString*)userName
{
    NSString *regex = @"^[a-zA-Z][a-zA-Z0-9_]{5,23}$";
    return [userName isMatchedByRegex:regex];
}

+(BOOL)passwordCheck:(NSString*)password
{
    NSString *regex = @"^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$";
    return [password isMatchedByRegex:regex];
}

+(BOOL)numberCheck:(NSString *)number
{
    NSString *regex = @"^\\+?[1-9][0-9]*$";
    return [number isMatchedByRegex:regex];
}

@end
