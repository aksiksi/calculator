//
//  CFNViewController.m
//  Calculator
//
//  Created by Assil Ksiksi on 8/14/13.
//  Copyright (c) 2013 Assil Ksiksi. All rights reserved.
//

#import "CFNViewController.h"

@interface CFNViewController ()

@end

@implementation CFNViewController

//@synthesize store;
//@synthesize label;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.label.text = @"";
    self.store = [[CFNStore alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)evaluate:(UIButton *)sender {
    float result = 0;
    float current;
    NSString *prevOp = @"+";
    [self.store parseNumber];
    
    NSLog(@"Evaluating..");
    
    for (NSString *op in [self.store operations]) {
        if ([op isEqual: @"+"] || [op isEqual: @"-"] || [op isEqual: @"*"] || [op isEqual: @"/"]) {
            prevOp = op;
        }
        
        else {
            current = [op floatValue];
            
            if ([prevOp isEqual:@"+"]) {
                result += current;
            }
            
            else if ([prevOp isEqual:@"-"]) {
                result -= current;
            }
            
            else if ([prevOp isEqual:@"*"]) {
                result *= current;
            }
            
            else if ([prevOp isEqual:@"/"]) {
                result /= current;
            }
        }
    }
    
    [self.store clearAll];
    
    NSString *strResult = [NSString stringWithFormat:@"%.2f", result];
    
    NSLog(@"Result is %@", strResult);
     
    self.label.text = strResult;
    
    [self.store.operations addObject:strResult];
}

- (IBAction)clear:(UIButton *)sender {
    self.label.text = @"";
    [self.store clearAll];
}

- (IBAction)keypress:(UIButton *)sender {
    NSString *input = [sender currentTitle];
    NSString *format;
    
    NSLog(@"Input is %@", input);
    
    if ([input isEqual: @"+"] || [input isEqual: @"-"] || [input isEqual: @"*"] || [input isEqual: @"/"]) {
        format = @"%@ %@ ";
        [self.store parseNumber];
        [self.store addOperation:input];
    } else {
        format = @"%@%@";
        [self.store addNumber:input];
    }
    
    NSString *newLabel = [NSString stringWithFormat:format, [self.label text], [sender currentTitle]];
    
    self.label.text = newLabel;
}

@end
