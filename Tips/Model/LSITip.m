//
//  LSITip.m
//  Tips
//
//  Created by Matthew Martindale on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITip.h"

@implementation LSITip

- (instancetype)initWithName: (NSString *)aName
                       total: (double)aTotal
                  splitCount: (NSInteger)aSplitCount
               tipPercentage: (double)aTipPercentage
{
    if (self = [super init]) {
        _name = aName.copy;
        _total = aTotal;
        _splitCount = aSplitCount;
        _tipPercentage = aTipPercentage;
    }
    return self;
}

@end
