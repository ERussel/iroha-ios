/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import <Foundation/Foundation.h>

@protocol IREVMAddress <NSObject>

- (nonnull NSData*)rawData;

@end

@protocol IREVMAddressFactoryProtocol <NSObject>

+ (nullable id<IREVMAddress>)evmAddressWithRawData:(nonnull NSData*)data
                                             error:(NSError *_Nullable*_Nullable)error;

@end

typedef NS_ENUM(NSUInteger, IREVMAddressFactoryError) {
    IREVMAddressFactoryErrorInvalidAddress
};

@interface IREVMAddressFactory : NSObject<IREVMAddressFactoryProtocol>

@end
