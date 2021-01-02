/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import "IRGetEngineReceipts.h"
#import "Queries.pbobjc.h"
#import <IrohaCrypto/NSData+Hex.h>

@implementation IRGetEngineReceipts
@synthesize transactionHash = _transactionHash;

- (nonnull instancetype)initWithTransactionHash:(nonnull NSData*)transactionHash {
    if (self = [super init]) {
        _transactionHash = transactionHash;
    }

    return self;
}

#pragma mark - Protobuf Transformable

- (nullable id)transform:(NSError **)error {
    GetEngineReceipts *query = [[GetEngineReceipts alloc] init];
    query.txHash = [_transactionHash toHexString];

    Query_Payload *payload = [[Query_Payload alloc] init];
    payload.getEngineReceipts = query;

    return payload;
}

@end
