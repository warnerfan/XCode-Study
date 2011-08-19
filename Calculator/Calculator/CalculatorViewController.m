//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Warner Fan on 11/8/17.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

- (CalculatorBrain *)brain
{
    if (!brain){
        brain = [[CalculatorBrain alloc] init];
    }
    return brain;
}
- (IBAction)digitalPressed:(UIButton *)sender
{
    NSString *digit = [[sender titleLabel] text]; 
    if (userIsInTheMiddleOfTypingANumber){
        [display setText:[[display text] stringByAppendingString:digit]];
    } else {
        [display setText:digit];
        userIsInTheMiddleOfTypingANumber = YES;
    }
}
- (IBAction)operationPressed:(UIButton *)sender
{
    if (userIsInTheMiddleOfTypingANumber){
        [[self brain] setOperand:[[display text] doubleValue]];
        userIsInTheMiddleOfTypingANumber = NO;
    }
    NSString *operation = [[sender titleLabel] text];
    double result = [[self brain] performOperation:operation];
    [display setText:[NSString stringWithFormat:@"%g", result]];
}

@end
