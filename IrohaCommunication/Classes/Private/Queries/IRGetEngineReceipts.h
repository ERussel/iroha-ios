/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import <Foundation/Foundation.h>
#import "IRQuery.h"
#import "IRProtobufTransformable.h"

@interface IRGetEngineReceipts : NSObject<IRGetEngineReceipts, IRProtobufTransformable>

- (nonnull instancetype)initWithTransactionHash:(nonnull NSData*)transactionHash;

@end
