//
//  ViewController.m
//  CalculatorBrain
//
//  Created by Maurício Linhares on 2/4/12.
//  Copyright (c) 2012 OfficeDrop. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize brain = _brain, numbersField = _numbersField;

- (void) viewWillAppear:(BOOL)animated {

    NSLog( @"Awoke from NIB" );
    
    CalculatorBrain * calculator = [[ CalculatorBrain alloc ] init];
    self.brain = calculator;
    [calculator release];
    [super viewWillAppear: animated];
}

- (IBAction) numberClicked: (UIButton *) sender {    
    self.numbersField.text = [ self.numbersField.text stringByAppendingString: sender.titleLabel.text ];    
}

- (IBAction) operationSelected: ( UIButton * ) sender{

    NSLog( @"Sender tag is %d - value is %@ - operation selected is %d - middle is %d", 
          sender.tag, 
          self.numbersField.text, 
          self.brain.operation, 
          middle );
    
    
    if ( sender.tag >= 0 && sender.tag <= 3  ) {
        
        if ( middle ) {            
            self.value = [self.brain perform: self.value ];
            middle = NO;
        } else {
            middle = YES;
            self.brain.operation = sender.tag;
            self.brain.leftOperand = self.value;
            self.stringValue = @"";
        }
        
    } else {
        
        switch ( sender.tag ) {
            case 4 :
                middle = NO;
                self.brain.leftOperand = self.value;
                self.value = self.brain.sqrt;                                
                break;
            case 5 :
                middle = NO;
                [self.brain clear];
                self.stringValue = @"";
                break;
            case 6:
                
                NSLog(@" Performing operation = ");
                
                if ( middle ) {
                    self.value = [self.brain perform: self.value ];
                    
                    middle = NO;
                }
                
                break;
        }
        
    }
        
}

- (double) value {
    return self.numbersField.text.doubleValue;
}

- (void) setValue:(double) _value {
    self.numbersField.text =  [NSString stringWithFormat: @"%g", _value ];
}

- (void) setStringValue:(NSString *) _value {
    self.numbersField.text = _value;
}

- (void) dealloc {
    [self.brain release];
    [self.numbersField release];
    [super dealloc];
}

@end
