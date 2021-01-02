/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import <Foundation/Foundation.h>
#import "IRCommand.h"
#import "IRProtobufTransformable.h"

@interface IRCallEngine : NSObject<IRCallEngine, IRProtobufTransformable>

- (nonnull instancetype)initWithCaller:(nonnull id<IRAccountId>)caller
                                callee:(nullable id<IREVMAddress>)callee
                                 input:(nonnull NSData*)input;

@end
