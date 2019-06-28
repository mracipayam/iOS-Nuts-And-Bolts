//
//  NSMutableArray+FunctionalOperators.m
//  Catalog
//
//  Created by Nikola Majcen on 19/05/2019.
//  Copyright © 2019 Infinum. All rights reserved.
//

#import "NSMutableArray+FunctionalOperators.h"

@implementation NSMutableArray (FunctionalOperators)

- (NSMutableArray *)map:(id (^)(id))mapValue
{
    if (!mapValue) { return [self copy]; }
    NSMutableArray *result = [[NSMutableArray alloc] init];
    [self enumerateObjectsUsingBlock:^(id _Nonnull item, NSUInteger index, BOOL *stop) {
        id mappedItem = mapValue(item);
        if (mappedItem) {
            [result addObject:mappedItem];
        }
    }];
    return result;
}

- (NSMutableArray *)flatMap:(id (^)(id))flatMapValue
{
    if (!flatMapValue) { return [self copy]; }
    NSMutableArray *result = [[NSMutableArray alloc] init];
    [self enumerateObjectsUsingBlock:^(id _Nonnull item, NSUInteger index, BOOL *stop) {
        id mappedItem = flatMapValue(item);
        if ([mappedItem isKindOfClass:[NSArray class]]) {
            NSArray *flattenedArray = [mappedItem flatMap:flatMapValue];
            [result addObjectsFromArray:flattenedArray];
        } else if (mappedItem) {
            [result addObject:mappedItem];
        }
    }];
    return result;
}

- (NSMutableArray *)filter:(BOOL (^)(id))includeValue
{
    if (!includeValue) { return [self copy]; }
    NSMutableArray *result = [[NSMutableArray alloc] init];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull item, NSUInteger index, BOOL *stop) {
        if (includeValue(item)) {
            [result addObject:item];
        }
    }];
    return result;
}

@end