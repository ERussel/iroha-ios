/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import "IRPagination.h"
#import "IRPaginationImpl.h"

static const UInt32 PAGINATION_SIZE = 50;

@interface IRPaginationBuilder()

@property (nonatomic, readwrite)UInt32 pageSize;
@property (nonatomic, strong)NSData  * _Nullable firstItemHash;
@property (nonatomic, strong)NSMutableArray<IROrdering>  * _Nullable orderingDescriptor;

@end

@implementation IRPaginationBuilder

+ (nonnull instancetype)builder {
    return [[IRPaginationBuilder alloc] init];
}

- (nullable id<IRPagination>)build:(NSError * _Nullable __autoreleasing * _Nullable)error {
    if (_firstItemHash && _firstItemHash.length != 32) {
        if (error) {
            NSString *message = @"Item hash must be 32 byte length";
            *error = [NSError errorWithDomain:NSStringFromClass([IRPaginationBuilder class])
                                         code:IRPaginationFactoryErrorInvalidHash
                                     userInfo:@{NSLocalizedDescriptionKey: message}];
        }
        return nil;
    }

    return [[IRPagination alloc] initWithPageSize:_pageSize > 0 ? _pageSize : PAGINATION_SIZE
                                    firstItemHash:_firstItemHash
                               orderingDescriptor:_orderingDescriptor];
}

- (nonnull id<IRPaginationBuilderProtocol>)withFirstItemHash:(nonnull NSData *)itemHash {
    _firstItemHash = itemHash;
    return self;
}

- (nonnull id<IRPaginationBuilderProtocol>)withOrderingField:(IROrderingField)field
                                                   direction:(IROrderingDirection)direction {
    if (!_orderingDescriptor) {
        _orderingDescriptor = [NSMutableArray<IROrdering> array];
    }

    for (id<IROrdering> ordering in _orderingDescriptor) {
        if (ordering.field == field) {
            return self;
        }
    }

    IROrdering *ordering = [[IROrdering alloc] initWithField:field direction:direction];
    [_orderingDescriptor addObject:ordering];

    return self;
}

- (nonnull id<IRPaginationBuilderProtocol>)withPageSize:(UInt32)pageSize {
    _pageSize = pageSize;
    return self;
}

@end

@implementation IRPaginationFactory

+ (nullable id<IRPagination>)pagination:(UInt32)pageSize
                          firstItemHash:(nullable NSData *)firstItemHash
                                  error:(NSError **)error {
    if (firstItemHash && firstItemHash.length != 32) {
        if (error) {
            NSString *message = @"Item hash must be 32 byte length";
            *error = [NSError errorWithDomain:NSStringFromClass([IRPaginationFactory class])
                                         code:IRPaginationFactoryErrorInvalidHash
                                     userInfo:@{NSLocalizedDescriptionKey: message}];
        }
        return nil;
    }

    return [[IRPagination alloc] initWithPageSize:pageSize
                                    firstItemHash:firstItemHash
                               orderingDescriptor:nil];
}

@end
