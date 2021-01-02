/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import "IRCallResultImpl.h"

@implementation IRCallResult
@synthesize callee = _callee;
@synthesize result = _result;

- (nonnull instancetype)initWithCallee:(nonnull id<IREVMAddress>)callee
                                result:(nonnull NSData*)result {
    if (self = [super init]) {
        _callee = callee;
        _result = result;
    }

    return self;
}

@end
