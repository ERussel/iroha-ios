/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import <Foundation/Foundation.h>
#import "IREngineReceipt.h"

@interface IRCallResult : NSObject<IRCallResult>

- (nonnull instancetype)initWithCallee:(nonnull id<IREVMAddress>)callee
                                result:(nonnull NSData*)result;

@end
