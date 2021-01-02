/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef IREngineReceipt_h
#define IREngineReceipt_h

#import <Foundation/Foundation.h>
#import "IREVMAddress.h"

@protocol IRCallResult <NSObject>

@property(nonatomic, readonly, nonnull)id<IREVMAddress> callee;
@property(nonatomic, readonly, nonnull)NSData* result;

@end

@protocol IREngineLog <NSObject>

@property(nonatomic, readonly, nonnull)id<IREVMAddress> address;
@property(nonatomic, readonly, nonnull)NSData* data;
@property(nonatomic, readonly, nonnull)NSArray<NSData*>* topics;

@end

@protocol IREngineReceipt <NSObject>

@property(nonatomic, readonly)UInt32 commandIndex;
@property(nonatomic, readonly, nonnull)id<IREVMAddress> caller;
@property(nonatomic, readonly, nonnull)NSArray<id<IREngineLog>>* logs;

@end

@protocol IREngineCallReceipt <IREngineReceipt>

@property(nonatomic, readonly, nonnull)id<IRCallResult> result;

@end

@protocol IREngineDeployReceipt <IREngineReceipt>

@property(nonatomic, readonly, nonnull)id<IREVMAddress> contractAddress;

@end

#endif /* IREngineReceipt_h */
