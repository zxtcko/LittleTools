//
//  NSString+RegexKitLite.h
//  Open2.0
//
//  Created by xyzq on 16/10/15.
//  Copyright © 2016年 Young. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (RegexKitLite)
/* 中文名检查 */
+(BOOL)realNameCheck:(NSString *)name;

/* 手机号检查(严格) */
+(BOOL)phoneNumCheck:(NSString *)phoneNum;

/* 手机号检查(不严格) */
+(BOOL)mobileCheck:(NSString *)mobile;

/* 固定电话号码检查 */
+(BOOL)callNumCheck:(NSString*)callNo;

/* 身份证检查 */
+(BOOL)idNumCheck:(NSString *)idNo;

/* 用户名检查 */
+(BOOL)userNameCheck:(NSString*)userName;

/* 密码检查 */
+(BOOL)passwordCheck:(NSString*)password;

/* 纯数字检查 */
+(BOOL)numberCheck:(NSString *)number;
@end
