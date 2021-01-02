/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import "IREngineReceiptsResponse.h"

@implementation IREngineReceiptsResponse
@synthesize receipts = _receipts;
@synthesize queryHash = _queryHash;

- (nonnull instancetype)initWithEngineReceipt:(nonnull NSArray<IREngineReceipt>*)receipts
                                    queryHash:(nonnull NSData*)queryHash {
    if (self = [super init]) {
        _receipts = receipts;
        _queryHash = queryHash;
    }

    return self;
}

@end
