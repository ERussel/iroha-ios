/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import "IRPaginationTransformer.h"
#import "Queries.pbobjc.h"
#import <IrohaCrypto/NSData+Hex.h>

@implementation IRPaginationTransformer

+ (nonnull TxPaginationMeta*)metaFromPagination:(nonnull id<IRPagination>)pagination {
    TxPaginationMeta *pbPagination = [[TxPaginationMeta alloc] init];
    pbPagination.pageSize = (uint32_t)pagination.pageSize;
    pbPagination.firstTxHash = [pagination.firstItemHash toHexString];

    if (pagination.orderingDescriptor) {
        Ordering *pbOrdering = [[Ordering alloc] init];

        for (id<IROrdering> ordering in pagination.orderingDescriptor) {
            Ordering_FieldOrdering *item = [[Ordering_FieldOrdering alloc] init];

            switch (ordering.field) {
                case IROrderingFieldTime:
                    item.field = Field_KCreatedTime;
                    break;
                case IROrderingFieldBlockPosition:
                    item.field = Field_KPosition;
                default:
                    break;
            }

            switch (ordering.direction) {
                case IROrderingDirectionAscending:
                    item.direction = Direction_KAscending;
                    break;
                case IROrderingDirectionDescending:
                    item.direction = Direction_KDescending;
                    break;
                default:
                    break;
            }

            [pbOrdering.sequenceArray addObject:item];
        }
    }

    return  pbPagination;
}

@end
