#import "IRPaginationImpl.h"

@implementation IROrdering
@synthesize field = _field;
@synthesize direction = _direction;

- (nonnull instancetype)initWithField:(IROrderingField)field
                            direction:(IROrderingDirection)direction {
    if (self = [super init]) {
        _field = field;
        _direction = direction;
    }

    return self;
}

@end

@implementation IRPagination
@synthesize pageSize = _pageSize;
@synthesize firstItemHash = _firstItemHash;
@synthesize orderingDescriptor = _orderingDescriptor;

- (nonnull instancetype)initWithPageSize:(UInt32)pageSize
                           firstItemHash:(nullable NSData *)firstItemHash
                      orderingDescriptor:(nullable NSArray<IROrdering> *)orderingDescriptor {
    if (self = [super init]) {
        _pageSize = pageSize;
        _firstItemHash = firstItemHash;
        _orderingDescriptor = orderingDescriptor;
    }

    return self;
}

@end
