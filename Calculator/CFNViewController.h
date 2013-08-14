//
//  CFNViewController.h
//  Calculator
//
//  Created by Assil Ksiksi on 8/14/13.
//  Copyright (c) 2013 Assil Ksiksi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CFNStore.h"

@interface CFNViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) CFNStore *store;

- (IBAction)evaluate:(UIButton *)sender;
- (IBAction)clear:(UIButton *)sender;
- (IBAction)keypress:(UIButton *)sender;

@end
