//
//  CalculatorBrain.h
//  CalculatorBrain
//
//  Created by Maurício Linhares on 2/4/12.
//  Copyright (c) 2012 OfficeDrop. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kSum = 0,
    kMinus = 1,
    kMultiplication = 2,
    kDivide = 3,
    kSqrt = 4,
    kClear = 5,
    kEqual = 6
} Operation;

@interface CalculatorBrain : NSObject

@property (nonatomic, assign) double leftOperand;
@property (nonatomic, assign) int operation;


- (double) sqrt;
- (double) perform: (double) rightOperand;
- (double) sum: (double) rightOperand;
- (double) minus: ( double ) rightOperand;
- (double) multiply: (double) rightOperand;
- (double) divide: (double) rightOperand;
- (double) clear;

@end
