//
//  UILabel+ASDouble.m
//  ASMulti_UILable
//
//  Created by Ashen on 15/12/17.
//  Copyright © 2015年 Ashen. All rights reserved.
//

#import "UILabel+ASDouble.h"

@implementation UILabel (ASDouble)

- (void)txtArr:(NSArray *)txtArr colorArr:(NSArray *)colorArr fontArr:(NSArray *)fontArr {
    
    NSInteger okCount = 0;
    okCount = txtArr.count < colorArr.count ? txtArr.count : colorArr.count;
    okCount = okCount < fontArr.count ? okCount : fontArr.count;

    NSMutableString *txt = [NSMutableString string];
    for (NSString *str in txtArr) {
        [txt appendString:str];
    }
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:txt];
    NSInteger startLoc = 0;
    for (int i = 0; i < okCount; i++) {
        [str addAttributes:@{NSForegroundColorAttributeName:colorArr[i], NSFontAttributeName:[UIFont systemFontOfSize:[fontArr[i] integerValue]]} range:NSMakeRange(startLoc, [txtArr[i] length])];
        startLoc += [txtArr[i] length];
    }
    self.attributedText = str;
}



@end
