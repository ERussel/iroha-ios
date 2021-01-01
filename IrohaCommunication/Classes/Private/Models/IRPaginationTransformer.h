/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import <Foundation/Foundation.h>
#import "IRPagination.h"

@class TxPaginationMeta;

@interface IRPaginationTransformer : NSObject

+ (nonnull TxPaginationMeta*)metaFromPagination:(nonnull id<IRPagination>)pagination;

@end
