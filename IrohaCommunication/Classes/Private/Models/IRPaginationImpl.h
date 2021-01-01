/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import <Foundation/Foundation.h>
#import "IRPagination.h"

@interface IROrdering : NSObject<IROrdering>

- (nonnull instancetype)initWithField:(IROrderingField)field
                            direction:(IROrderingDirection)direction;

@end

@interface IRPagination : NSObject<IRPagination>

- (nonnull instancetype)initWithPageSize:(UInt32)pageSize
                           firstItemHash:(nullable NSData *)firstItemHash
                      orderingDescriptor:(nullable NSArray<IROrdering> *)orderingDescriptor;

@end
