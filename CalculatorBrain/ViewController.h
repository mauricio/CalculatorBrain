//
//  ViewController.h
//  CalculatorBrain
//
//  Created by Maurício Linhares on 2/4/12.
//  Copyright (c) 2012 OfficeDrop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface ViewController : UIViewController

{
    BOOL middle;
}

@property (nonatomic, retain) CalculatorBrain * brain;
@property (nonatomic, retain) IBOutlet UITextField * numbersField;

- (double) value;
- (void) setValue:(double) _value;
- (void) setStringValue:(NSString *) _value;

- (IBAction) numberClicked: (id) sender;
- (IBAction) operationSelected: (id) sender;

@end