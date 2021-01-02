/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import <Foundation/Foundation.h>
#import "IREngineReceipt.h"

@interface IREngineLog : NSObject<IREngineLog>

- (nonnull instancetype)initWithAddress:(nonnull id<IREVMAddress>)address
                                   data:(nonnull NSData*)data
                                   topics:(nonnull NSArray<NSData*>*)topics;

@end
