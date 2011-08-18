//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Warner Fan on 11/8/17.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface CalculatorViewController : UIViewController
{
    IBOutlet UILabel *display;
    CalculatorBrain *brain;
}

- (IBAction)digitalPressed:(UIButton *)sender;
- (IBAction)operationPressed:(UIButton *)sender;

@end
