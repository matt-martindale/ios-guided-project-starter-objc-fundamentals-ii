//
//  LSITipController.h
//  Tips
//
//  Created by Matthew Martindale on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

// Pre announcing LSITip exists
@class LSITip;

NS_ASSUME_NONNULL_BEGIN

@interface LSITipController : NSObject

// foward declaring array using the pre-announcement
@property (nonatomic, readonly, copy) NSArray<LSITip *> *tips;
@property (nonatomic, readonly) NSUInteger tipCount;

- (LSITip *)tipAtIndex:(NSUInteger)index;
-(void)addTip:(LSITip *)aTip;

@end

NS_ASSUME_NONNULL_END
