//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Warner Fan on 11/8/18.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)performWaitingOperation
{
    if ([@"+" isEqual:waitingOperation]){
        operand = waitingOperand + operand;
    }
    else if ([@"-" isEqual:waitingOperation]){
        operand = waitingOperand - operand;
    }
    else if ([@"*" isEqual:waitingOperation]){
        operand = waitingOperand * operand;
    }
    else if ([@"/" isEqual:waitingOperation]){
        if (operand){
        operand = waitingOperand / operand;
        }
    }
}

- (void)setOperand:(double) anOperand
{
    operand = anOperand;
}

- (double)performOperation:(NSString *)operation
{
    if ([operation isEqual:@"sqrt"]){
        operand = sqrt(operand);
    }
    else{
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    return operand;
}


@end
