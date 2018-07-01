//
//  AmountFormatter.h
//  TDD
//
//  Created by Lakshmi on 6/30/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum{
    en = 0,
    fr,
    nl,
    de
} languageNames;

@interface AmountFormatter : NSObject
-(NSString*)formatAmountForRegionWithLang:(NSString*)amountString;

@end
