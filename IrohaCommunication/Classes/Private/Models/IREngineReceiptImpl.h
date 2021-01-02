/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import <Foundation/Foundation.h>
#import "IREngineReceipt.h"

@interface IREngineCallReceipt : NSObject<IREngineCallReceipt>

- (nonnull instancetype)initWithCommandIndex:(UInt32)commandIndex
                                      caller:(nonnull id<IREVMAddress>)caller
                                      result:(nonnull id<IRCallResult>)result
                                        logs:(nonnull NSArray<IREngineLog>*)logs;

@end

@interface IREngineDeployReceipt : NSObject<IREngineDeployReceipt>

- (nonnull instancetype)initWithCommandIndex:(UInt32)commandIndex
                                      caller:(nonnull id<IREVMAddress>)caller
                             contractAddress:(nonnull id<IREVMAddress>)contractAddress
                                        logs:(nonnull NSArray<IREngineLog>*)logs;

@end
