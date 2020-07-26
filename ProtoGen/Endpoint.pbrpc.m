// Code generated by gRPC proto compiler.  DO NOT EDIT!
// source: endpoint.proto

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "Endpoint.pbrpc.h"
#import "Endpoint.pbobjc.h"
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>

#import "Transaction.pbobjc.h"
#import "Queries.pbobjc.h"
#import "QryResponses.pbobjc.h"
#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
#import <Protobuf/GPBEmpty.pbobjc.h>
#else
#import "GPBEmpty.pbobjc.h"
#endif

@implementation CommandService_v1

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"iroha.protocol"
                 serviceName:@"CommandService_v1"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"iroha.protocol"
                 serviceName:@"CommandService_v1"];
}

#pragma clang diagnostic pop

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName
                 callOptions:(GRPCCallOptions *)callOptions {
  return [self initWithHost:host callOptions:callOptions];
}

#pragma mark - Class Methods

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [[self alloc] initWithHost:host callOptions:callOptions];
}

#pragma mark - Method Implementations

#pragma mark Torii(Transaction) returns (Empty)

- (void)toriiWithRequest:(Transaction *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToToriiWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToToriiWithRequest:(Transaction *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Torii"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBEmpty class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)toriiWithMessage:(Transaction *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"Torii"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GPBEmpty class]];
}

#pragma mark ListTorii(TxList) returns (Empty)

- (void)listToriiWithRequest:(TxList *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToListToriiWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListToriiWithRequest:(TxList *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ListTorii"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBEmpty class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)listToriiWithMessage:(TxList *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ListTorii"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GPBEmpty class]];
}

#pragma mark Status(TxStatusRequest) returns (ToriiResponse)

- (void)statusWithRequest:(TxStatusRequest *)request handler:(void(^)(ToriiResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToStatusWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToStatusWithRequest:(TxStatusRequest *)request handler:(void(^)(ToriiResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Status"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ToriiResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)statusWithMessage:(TxStatusRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"Status"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ToriiResponse class]];
}

#pragma mark StatusStream(TxStatusRequest) returns (stream ToriiResponse)

- (void)statusStreamWithRequest:(TxStatusRequest *)request eventHandler:(void(^)(BOOL done, ToriiResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToStatusStreamWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToStatusStreamWithRequest:(TxStatusRequest *)request eventHandler:(void(^)(BOOL done, ToriiResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"StatusStream"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ToriiResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
- (GRPCUnaryProtoCall *)statusStreamWithMessage:(TxStatusRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"StatusStream"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ToriiResponse class]];
}

@end
@implementation QueryService_v1

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"iroha.protocol"
                 serviceName:@"QueryService_v1"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"iroha.protocol"
                 serviceName:@"QueryService_v1"];
}

#pragma clang diagnostic pop

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName
                 callOptions:(GRPCCallOptions *)callOptions {
  return [self initWithHost:host callOptions:callOptions];
}

#pragma mark - Class Methods

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [[self alloc] initWithHost:host callOptions:callOptions];
}

#pragma mark - Method Implementations

#pragma mark Find(Query) returns (QueryResponse)

- (void)findWithRequest:(Query *)request handler:(void(^)(QueryResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToFindWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToFindWithRequest:(Query *)request handler:(void(^)(QueryResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Find"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[QueryResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)findWithMessage:(Query *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"Find"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[QueryResponse class]];
}

#pragma mark FetchCommits(BlocksQuery) returns (stream BlockQueryResponse)

- (void)fetchCommitsWithRequest:(BlocksQuery *)request eventHandler:(void(^)(BOOL done, BlockQueryResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToFetchCommitsWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToFetchCommitsWithRequest:(BlocksQuery *)request eventHandler:(void(^)(BOOL done, BlockQueryResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"FetchCommits"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[BlockQueryResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
- (GRPCUnaryProtoCall *)fetchCommitsWithMessage:(BlocksQuery *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"FetchCommits"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[BlockQueryResponse class]];
}

@end
#endif
