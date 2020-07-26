// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: endpoint.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import <stdatomic.h>

#import "Endpoint.pbobjc.h"
#import "Transaction.pbobjc.h"
#import "Queries.pbobjc.h"
#import "QryResponses.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(Transaction);

#pragma mark - EndpointRoot

@implementation EndpointRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - EndpointRoot_FileDescriptor

static GPBFileDescriptor *EndpointRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"iroha.protocol"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum TxStatus

GPBEnumDescriptor *TxStatus_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "StatelessValidationFailed\000StatelessValid"
        "ationSuccess\000StatefulValidationFailed\000St"
        "atefulValidationSuccess\000Rejected\000Committ"
        "ed\000MstExpired\000NotReceived\000MstPending\000Eno"
        "ughSignaturesCollected\000";
    static const int32_t values[] = {
        TxStatus_StatelessValidationFailed,
        TxStatus_StatelessValidationSuccess,
        TxStatus_StatefulValidationFailed,
        TxStatus_StatefulValidationSuccess,
        TxStatus_Rejected,
        TxStatus_Committed,
        TxStatus_MstExpired,
        TxStatus_NotReceived,
        TxStatus_MstPending,
        TxStatus_EnoughSignaturesCollected,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(TxStatus)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:TxStatus_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL TxStatus_IsValidValue(int32_t value__) {
  switch (value__) {
    case TxStatus_StatelessValidationFailed:
    case TxStatus_StatelessValidationSuccess:
    case TxStatus_StatefulValidationFailed:
    case TxStatus_StatefulValidationSuccess:
    case TxStatus_Rejected:
    case TxStatus_Committed:
    case TxStatus_MstExpired:
    case TxStatus_NotReceived:
    case TxStatus_MstPending:
    case TxStatus_EnoughSignaturesCollected:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - ToriiResponse

@implementation ToriiResponse

@dynamic txStatus;
@dynamic txHash;
@dynamic errOrCmdName;
@dynamic failedCmdIndex;
@dynamic errorCode;

typedef struct ToriiResponse__storage_ {
  uint32_t _has_storage_[1];
  TxStatus txStatus;
  uint32_t errorCode;
  NSString *txHash;
  NSString *errOrCmdName;
  uint64_t failedCmdIndex;
} ToriiResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "txStatus",
        .dataTypeSpecific.enumDescFunc = TxStatus_EnumDescriptor,
        .number = ToriiResponse_FieldNumber_TxStatus,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ToriiResponse__storage_, txStatus),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "txHash",
        .dataTypeSpecific.clazz = Nil,
        .number = ToriiResponse_FieldNumber_TxHash,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ToriiResponse__storage_, txHash),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "errOrCmdName",
        .dataTypeSpecific.clazz = Nil,
        .number = ToriiResponse_FieldNumber_ErrOrCmdName,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(ToriiResponse__storage_, errOrCmdName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "failedCmdIndex",
        .dataTypeSpecific.clazz = Nil,
        .number = ToriiResponse_FieldNumber_FailedCmdIndex,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(ToriiResponse__storage_, failedCmdIndex),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "errorCode",
        .dataTypeSpecific.clazz = Nil,
        .number = ToriiResponse_FieldNumber_ErrorCode,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(ToriiResponse__storage_, errorCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ToriiResponse class]
                                     rootClass:[EndpointRoot class]
                                          file:EndpointRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ToriiResponse__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t ToriiResponse_TxStatus_RawValue(ToriiResponse *message) {
  GPBDescriptor *descriptor = [ToriiResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:ToriiResponse_FieldNumber_TxStatus];
  return GPBGetMessageRawEnumField(message, field);
}

void SetToriiResponse_TxStatus_RawValue(ToriiResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [ToriiResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:ToriiResponse_FieldNumber_TxStatus];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - TxStatusRequest

@implementation TxStatusRequest

@dynamic txHash;

typedef struct TxStatusRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *txHash;
} TxStatusRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "txHash",
        .dataTypeSpecific.clazz = Nil,
        .number = TxStatusRequest_FieldNumber_TxHash,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TxStatusRequest__storage_, txHash),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TxStatusRequest class]
                                     rootClass:[EndpointRoot class]
                                          file:EndpointRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TxStatusRequest__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - TxList

@implementation TxList

@dynamic transactionsArray, transactionsArray_Count;

typedef struct TxList__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *transactionsArray;
} TxList__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "transactionsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Transaction),
        .number = TxList_FieldNumber_TransactionsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(TxList__storage_, transactionsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TxList class]
                                     rootClass:[EndpointRoot class]
                                          file:EndpointRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TxList__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
