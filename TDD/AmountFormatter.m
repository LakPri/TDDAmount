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



- (NSString*)getAmountInDoubleFormatWith2Decimal:(NSString *)amountString {
    double convertedDouble = [amountString doubleValue];
    
    NSString *stringVal = [NSString stringWithFormat:@"%.2f", convertedDouble];    
    return stringVal;
}

-(NSString*)formatAmountForRegionWithLang:(NSString*)amountString {
    
    amountString = [self getAmountInDoubleFormatWith2Decimal:amountString];

    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"(\\d)(?=(\\d{3})+(?!\\d))"                options:NSRegularExpressionCaseInsensitive                  error:nil];
    
    amountString = [amountString stringByReplacingOccurrencesOfString:@"." withString:@","];
    
    NSString *modifiedString = [regex stringByReplacingMatchesInString:amountString options:0  range:NSMakeRange(0, [amountString length])
                                                          withTemplate:@"$1."];
    
    

    return modifiedString;
    
    
    //Parser Input
    
   /* NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"(\\d)(?=(\\d{3})+(?!\\d))"
                                                                           options:NSRegularExpressionCaseInsensitive
                                                                             error:nil];
    
    
    NSString *modifiedString = [regex stringByReplacingMatchesInString:amountString options:0
                                                                 range:NSMakeRange(0, [amountString length])
                                                          withTemplate:self.separator];
    
    return modifiedString;*/

    
    

}



@end
