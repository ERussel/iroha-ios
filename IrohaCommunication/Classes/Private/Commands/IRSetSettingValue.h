/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import <Foundation/Foundation.h>
#import "IRCommand.h"
#import "IRProtobufTransformable.h"

@interface IRSetSettingValue : NSObject<IRSetSettingValue, IRProtobufTransformable>

- (nonnull instancetype)initWithKey:(nonnull NSString *)key
                              value:(nonnull NSString *)value;

@end
