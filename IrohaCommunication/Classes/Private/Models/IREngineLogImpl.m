/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import "IREngineLogImpl.h"

@implementation IREngineLog
@synthesize address = _address;
@synthesize data = _data;
@synthesize topics = _topics;

- (nonnull instancetype)initWithAddress:(nonnull id<IREVMAddress>)address
                                   data:(nonnull NSData*)data
                                 topics:(nonnull NSArray<NSData*>*)topics {
    if (self = [super init]) {
        _address = address;
        _data = data;
        _topics = topics;
    }

    return self;
}

@end
