/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import <Foundation/Foundation.h>
#import "IRQueryResponse.h"

@interface IREngineReceiptsResponse : NSObject<IREngineReceiptsResponse>

- (nonnull instancetype)initWithEngineReceipt:(nonnull NSArray<IREngineReceipt>*)receipts
                                    queryHash:(nonnull NSData*)queryHash;

@end
