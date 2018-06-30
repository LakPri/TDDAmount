//
//  AmountFormatter.m
//  TDD
//
//  Created by Lakshmi on 6/30/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import "AmountFormatter.h"

@interface AmountFormatter()
@property (nonatomic, strong) NSString* separator;
@end

@implementation AmountFormatter



-(NSString*)formatAmountForRegion:(NSString*)amountString currentRegion:(languageNames) languageNames{
    
    
    switch (languageNames) {
    case en:
        self.separator = @"$1,";
        break;
    case fr:
        self.separator = @"$1 ";
        amountString = [amountString stringByReplacingOccurrencesOfString:@"."
                                                          withString:@","];
            
        break;
    case nl:
        self.separator = @"$1.";
        amountString = [amountString stringByReplacingOccurrencesOfString:@"."
                                                                   withString:@","];
        break;
    case de:
        self.separator = @"$1.";
        amountString = [amountString stringByReplacingOccurrencesOfString:@"."
                                                                   withString:@","];
        
        break;
        
    }
    
    //Parser Input
    
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"(\\d)(?=(\\d{3})+(?!\\d))"
                                                                           options:NSRegularExpressionCaseInsensitive
                                                                             error:nil];
    
    
    NSString *modifiedString = [regex stringByReplacingMatchesInString:amountString options:0
                                                                 range:NSMakeRange(0, [amountString length])
                                                          withTemplate:self.separator];
    
    return modifiedString;

    
    

}



@end