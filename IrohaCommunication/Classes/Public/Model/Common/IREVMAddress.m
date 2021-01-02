/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import "IREVMAddress.h"
#import <IrohaCrypto/NSData+Hex.h>

static const NSUInteger EVM_ADDRESS_SIZE = 20;

@interface IREVMAddress : NSObject<IREVMAddress>

@property(nonatomic, readonly)NSData * _Nonnull rawData;

- (nonnull instancetype)initWithRawData:(nonnull NSData*)rawData;

@end

@implementation IREVMAddress

- (nonnull instancetype)initWithRawData:(nonnull NSData*)rawData {
    if (self = [super init]) {
        _rawData = rawData;
    }

    return self;
}

@end

@implementation IREVMAddressFactory

+ (nullable id<IREVMAddress>)evmAddressWithRawData:(nonnull NSData *)data
                                             error:(NSError * _Nullable * _Nullable)error {
    if (data.length != EVM_ADDRESS_SIZE) {
        if (error) {
            NSString *message = [NSString stringWithFormat:@"EVM address size %@ is invalid. Expected: %@", @(data.length), @(EVM_ADDRESS_SIZE)];
            *error = [NSError errorWithDomain:NSStringFromClass([IREVMAddressFactory class])
                                         code:IREVMAddressFactoryErrorInvalidAddress
                                     userInfo:@{NSLocalizedDescriptionKey: message}];
        }

        return nil;
    }

    return [[IREVMAddress alloc] initWithRawData:data];
}

+ (nullable id<IREVMAddress>)evmAddressWithHex:(nonnull NSString*)hexString
                                         error:(NSError *_Nullable*_Nullable)error {
    NSData *rawData = [[NSData alloc] initWithHexString:hexString
                                                  error:error];

    if (!rawData) {
        return nil;
    }

    return [self evmAddressWithRawData:rawData error:error];
}

@end
