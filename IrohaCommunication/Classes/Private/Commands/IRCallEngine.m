/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import "IRCallEngine.h"
#import "Commands.pbobjc.h"
#import <IrohaCrypto/NSData+Hex.h>

@implementation IRCallEngine
@synthesize caller = _caller;
@synthesize callee = _callee;
@synthesize input = _input;

- (nonnull instancetype)initWithCaller:(nonnull id<IRAccountId>)caller
                                callee:(nullable id<IREVMAddress>)callee
                                 input:(nonnull NSData*)input {
    if (self = [super init]) {
        _caller = caller;
        _callee = callee;
        _input = input;
    }

    return self;
}

#pragma mark - Protobuf Transformable

- (nullable id)transform:(NSError *__autoreleasing *)error {
    CallEngine *callEngine = [[CallEngine alloc] init];
    callEngine.caller = [_caller identifier];

    if (_callee) {
        callEngine.callee = [_callee.rawData toHexString];
    }

    callEngine.input = [_input toHexString];

    Command *command = [[Command alloc] init];
    command.callEngine = callEngine;

    return command;
}

@end
