/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import "IRSetSettingValue.h"
#import "Commands.pbobjc.h"

@implementation IRSetSettingValue
@synthesize key = _key;
@synthesize value = _value;

- (nonnull instancetype)initWithKey:(nonnull NSString *)key
                              value:(nonnull NSString *)value {
    if (self = [super init]) {
        _key = key;
        _value = value;
    }

    return self;
}

#pragma mark - Protobuf Transformable

- (nullable id)transform:(NSError *__autoreleasing *)error {
    SetSettingValue *setSettingValue = [[SetSettingValue alloc] init];

    setSettingValue.key = _key;
    setSettingValue.value = _value;

    Command *command = [[Command alloc] init];
    command.setSettingValue = setSettingValue;

    return command;
}

@end
