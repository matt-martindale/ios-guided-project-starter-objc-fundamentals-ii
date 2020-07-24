//
//  LSITipController.m
//  Tips
//
//  Created by Matthew Martindale on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITipController.h"
#import "LSITip.h"

@interface LSITipController () {
    NSMutableArray *_internalTips;
}

@end

@implementation LSITipController

- (instancetype)init
{
    if (self = [super init]) {
        _internalTips = [[NSMutableArray alloc] init];
        
// Preprocessor conditional - e.x. only run if in debug mode (for testing)
#ifdef DEBUG
        // FIXME: Test Mode (Remove for production)
#pragma message "This should be removed eventually"
        [self addTestData];
#endif
    }
    return self;
}

- (void)addTestData
{
    LSITip *aTip = [[LSITip alloc] initWithName:@"Sushi"
                                          total:200.
                                     splitCount:4
                                  tipPercentage:20.];
    
    [_internalTips addObject:aTip];
    [_internalTips addObject:[[LSITip alloc] initWithName:@"Pizza"
                                                    total:30.
                                               splitCount:8
                                            tipPercentage:25.]];
}

// MARK: - Convenience accessors

- (NSArray<LSITip *> *)tips
{
    return _internalTips.copy;
}

- (NSUInteger)tipCount
{
    return _internalTips.count;
}

- (LSITip *)tipAtIndex:(NSUInteger)index
{
    return [_internalTips objectAtIndex:index];
}

- (void)addTip:(LSITip *)aTip
{
    [_internalTips addObject:aTip];
}

@end
