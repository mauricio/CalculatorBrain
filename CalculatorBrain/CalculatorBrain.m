//
//  CalculatorBrain.m
//  CalculatorBrain
//
//  Created by Maurício Linhares on 2/4/12.
//  Copyright (c) 2012 OfficeDrop. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

@synthesize leftOperand = _leftOperand, operation = _operation;

- (double) sqrt {    
    return sqrt( self.leftOperand );    
}

- (double) perform: (double) rightOperand {
    
    switch (self.operation) {
        case  kSum :
            return [self sum: rightOperand];
            break;
        case  kMinus :
            return [self minus: rightOperand];
            break; 
        case  kMultiplication :
            return [self multiply: rightOperand];
            break;        
        case  kDivide :
            return [self divide: rightOperand];
            break;
        default:
            return -1;
    }
    
}

- (double) clear {
    self.leftOperand = 0;
    self.operation = -1;
    return 0;
}

- (double) sum: (double) rightOperand {
    return self.leftOperand + rightOperand;
}

- (double) minus: ( double ) rightOperand {
    return self.leftOperand - rightOperand;
}
                                           
- (double) multiply: (double) rightOperand {
    return self.leftOperand * rightOperand;
}

- (double) divide: (double) rightOperand {
    return self.leftOperand / rightOperand;
}

@end
