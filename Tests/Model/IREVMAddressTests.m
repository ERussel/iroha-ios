/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

@import XCTest;
@import IrohaCommunication;

static const NSUInteger VALID_EVM_ADDRESS_COUNT = 2;
static NSString * const VALID_EVM_ADDRESSES[] = {
    @"ae16540a2db328b03c17c8c63db269d16cfe0099",
    @"0000000000000000000000000000000000000000",
};

static const NSUInteger INVALID_EVM_ADDRESS_COUNT = 3;
static NSString * const INVALID_EVM_ADDRESSES[] = {
    @"",
    @"0000000000a000b00000000000000000000000",
    @"000000000000000000000000000000000000000099",
};

@interface IREVMAddressTests : XCTestCase

@end

@implementation IREVMAddressTests

- (void)testValidEvmAddresses {
    for (NSUInteger i = 0; i < VALID_EVM_ADDRESS_COUNT; i++) {
        NSData *data = [[NSData alloc] initWithHexString:VALID_EVM_ADDRESSES[i]
                                                   error:nil];
        id<IREVMAddress> address = [IREVMAddressFactory evmAddressWithRawData:data
                                                                        error:nil];
        XCTAssertNotNil(address);
        XCTAssertEqualObjects(address.rawData, data);
    }
}

- (void)testInvalidAccountNamesWithError {
    for (NSUInteger i = 0; i < INVALID_EVM_ADDRESS_COUNT; i++) {
        NSData *data = [[NSData alloc] initWithHexString:INVALID_EVM_ADDRESSES[i]
                                                   error:nil];

        NSError *error = nil;
        id<IREVMAddress> address = [IREVMAddressFactory evmAddressWithRawData:data
                                                                        error:&error];
        XCTAssertNil(address);
        XCTAssertNotNil(error);
        XCTAssertEqual(error.code, IREVMAddressFactoryErrorInvalidAddress);
    }
}

@end
