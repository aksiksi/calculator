//
//  CFNStore.h
//  Calculator
//
//  Created by Assil Ksiksi on 8/14/13.
//  Copyright (c) 2013 Assil Ksiksi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CFNStore : NSObject

@property NSMutableArray *operations;
@property NSMutableArray *number;

- (void)addOperation:(NSString *)string;
//- (void)addToHistory:(NSMutableArray *)array;
- (void)addNumber:(NSString *)number;
- (void)parseNumber;
- (void)clearAll;

@end
