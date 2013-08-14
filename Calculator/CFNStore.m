//
//  CFNStore.m
//  Calculator
//
//  Created by Assil Ksiksi on 8/14/13.
//  Copyright (c) 2013 Assil Ksiksi. All rights reserved.
//

#import "CFNStore.h"

@implementation CFNStore

- (void)addOperation:(NSString *)operation {
    [self.operations addObject:operation];
}

- (void)addNumber:(NSString *)number {
    [self.number addObject:number];
}

- (void)clearAll {
    self.operations = [[NSMutableArray alloc] init];
    self.number = [[NSMutableArray alloc] init];
}

//- (void)addToHistory:(NSMutableArray *)array {
//    [self.history addObject:array];
//}

- (void)parseNumber {
    NSString *number = [self.number componentsJoinedByString:@""];
    self.number = [[NSMutableArray alloc] init];
    [self.operations addObject:number];
    NSLog(@"Number parsed %@", number);
}

@end
