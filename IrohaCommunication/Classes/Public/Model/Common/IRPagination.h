/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSUInteger, IRPaginationFactoryError) {
    IRPaginationFactoryErrorInvalidHash
};

typedef NS_ENUM(NSUInteger, IROrderingDirection) {
    IROrderingDirectionAscending,
    IROrderingDirectionDescending
};

typedef NS_ENUM(NSUInteger, IROrderingField) {
    IROrderingFieldTime,
    IROrderingFieldBlockPosition
};

@protocol IROrdering <NSObject>

@property (nonatomic, readonly) IROrderingField field;
@property (nonatomic, readonly) IROrderingDirection direction;

@end

@protocol IRPagination <NSObject>

@property (nonatomic, readonly) UInt32 pageSize;
@property (nonatomic, readonly) NSData * _Nullable firstItemHash;
@property (nonatomic, readonly) NSArray<IROrdering> * _Nullable orderingDescriptor;

@end

@protocol IRPaginationBuilderProtocol <NSObject>

- (nonnull id<IRPaginationBuilderProtocol>)withFirstItemHash:(nonnull NSData *)itemHash;
- (nonnull id<IRPaginationBuilderProtocol>)withPageSize:(UInt32)pageSize;
- (nonnull id<IRPaginationBuilderProtocol>)withOrderingField:(IROrderingField)field
                                                   direction:(IROrderingDirection)direction;

- (nullable id<IRPagination>)build:(NSError *_Nullable*_Nullable)error;

@end

@interface IRPaginationBuilder : NSObject<IRPaginationBuilderProtocol>

+ (nonnull instancetype)builder;

@end

__deprecated
@protocol IRPaginationFactoryProtocol <NSObject>

+ (nullable id<IRPagination>)pagination:(UInt32)pageSize
                          firstItemHash:(nullable NSData *)firstItemHash
                                  error:(NSError *_Nullable*_Nullable)error;

@end

__deprecated
@interface IRPaginationFactory : NSObject<IRPaginationFactoryProtocol>
@end
