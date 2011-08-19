//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Warner Fan on 11/8/18.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject
{
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
    
}

- (void)setOperand:(double) anOperand;
- (double)performOperation:(NSString *)operation;

@end
