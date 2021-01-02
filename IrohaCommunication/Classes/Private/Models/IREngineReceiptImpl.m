/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import "IREngineReceiptImpl.h"

@implementation IREngineCallReceipt
@synthesize commandIndex = _commandIndex;
@synthesize caller = _caller;
@synthesize result = _result;
@synthesize logs = _logs;

- (nonnull instancetype)initWithCommandIndex:(UInt32)commandIndex
                                      caller:(nonnull id<IREVMAddress>)caller
                                      result:(nonnull id<IRCallResult>)result
                                        logs:(nonnull NSArray<IREngineLog>*)logs {
    if (self = [super init]) {
        _commandIndex = commandIndex;
        _caller = caller;
        _result = result;
        _logs = logs;
    }

    return self;
}

@end

@implementation IREngineDeployReceipt
@synthesize commandIndex = _commandIndex;
@synthesize caller = _caller;
@synthesize contractAddress = _contractAddress;
@synthesize logs = _logs;

- (nonnull instancetype)initWithCommandIndex:(UInt32)commandIndex
                                      caller:(nonnull id<IREVMAddress>)caller
                             contractAddress:(nonnull id<IREVMAddress>)contractAddress
                                        logs:(nonnull NSArray<IREngineLog>*)logs {
    if (self = [super init]) {
        _commandIndex = commandIndex;
        _caller = caller;
        _contractAddress = contractAddress;
        _logs = logs;
    }

    return self;
}

@end
