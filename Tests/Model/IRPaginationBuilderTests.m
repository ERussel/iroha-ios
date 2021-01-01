/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import <XCTest/XCTest.h>
@import IrohaCommunication;

@interface IRPaginationBuilderTests : XCTestCase

@end

@implementation IRPaginationBuilderTests

- (void)testValidPagination {
    NSError *error = nil;

    NSData *itemHash = [[@"Test Hash" dataUsingEncoding:NSUTF8StringEncoding] sha3:IRSha3Variant256
                                                                             error:&error];

    XCTAssertNil(error);

    error = nil;

    UInt32 pageSize = 10;

    id<IRPaginationBuilderProtocol> builder = [IRPaginationBuilder builder];
    builder = [builder withPageSize:pageSize];
    builder = [builder withFirstItemHash:itemHash];
    id<IRPagination> pagination = [builder build:&error];

    XCTAssertNil(error);
    XCTAssertEqual(pagination.pageSize, pageSize);
    XCTAssertEqualObjects(pagination.firstItemHash, itemHash);
    XCTAssertNil(pagination.orderingDescriptor);
}

- (void)testNilItemHashPagination {
    UInt32 pageSize = 10;

    NSError *error = nil;
    id<IRPaginationBuilderProtocol> builder = [IRPaginationBuilder builder];
    builder = [builder withPageSize:pageSize];
    id<IRPagination> pagination = [builder build:&error];

    XCTAssertNil(error);
    XCTAssertEqual(pagination.pageSize, pageSize);
    XCTAssertNil(pagination.firstItemHash);
    XCTAssertNil(pagination.orderingDescriptor);
}

- (void)testInvalidPagination {
    NSData *itemHash = [@"Test Hash" dataUsingEncoding:NSUTF8StringEncoding];
    UInt32 pageSize = 10;

    NSError *error = nil;
    id<IRPaginationBuilderProtocol> builder = [IRPaginationBuilder builder];
    builder = [builder withPageSize:pageSize];
    builder = [builder withFirstItemHash:itemHash];
    id<IRPagination> pagination = [builder build:&error];

    XCTAssertNil(pagination);
    XCTAssertTrue(error != nil && error.code == IRPaginationFactoryErrorInvalidHash);
}

- (void)testValidOrdering {
    NSError *error = nil;

    id<IRPaginationBuilderProtocol> builder = [IRPaginationBuilder builder];
    builder = [builder withOrderingField:IROrderingFieldTime
                               direction:IROrderingDirectionAscending];
    builder = [builder withOrderingField:IROrderingFieldBlockPosition
                               direction:IROrderingDirectionDescending];

    id<IRPagination> pagination = [builder build:&error];

    XCTAssertNil(error);

    XCTAssertEqual(pagination.orderingDescriptor.count, 2);
    XCTAssertEqual([pagination.orderingDescriptor[0] field], IROrderingFieldTime);
    XCTAssertEqual([(id<IROrdering>)(pagination.orderingDescriptor[0]) direction],
                   IROrderingDirectionAscending);
    XCTAssertEqual([pagination.orderingDescriptor[1] field], IROrderingFieldBlockPosition);
    XCTAssertEqual([(id<IROrdering>)(pagination.orderingDescriptor[1]) direction],
                   IROrderingDirectionDescending);
}

- (void)testDuplicatedOrdering {
    NSError *error = nil;

    id<IRPaginationBuilderProtocol> builder = [IRPaginationBuilder builder];
    builder = [builder withOrderingField:IROrderingFieldTime
                               direction:IROrderingDirectionAscending];
    builder = [builder withOrderingField:IROrderingFieldTime
                               direction:IROrderingDirectionDescending];

    id<IRPagination> pagination = [builder build:&error];

    XCTAssertNil(error);
    XCTAssertEqual(pagination.orderingDescriptor.count, 1);
    XCTAssertEqual([pagination.orderingDescriptor[0] field], IROrderingFieldTime);
    XCTAssertEqual([(id<IROrdering>)(pagination.orderingDescriptor[0]) direction],
                   IROrderingDirectionAscending);
}

@end
