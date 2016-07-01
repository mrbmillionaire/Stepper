//
//  StepperView.m
//  Stepper
//
//  Created by Bryan  Miller on 6/30/16.
//  Copyright © 2016 TheIronYard. All rights reserved.
//

#import "StepperView.h"

@implementation StepperView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor greenColor];
        self.InnerRactange= [[UIView alloc ] initWithFrame:CGRectMake(50, 0, 50, 50)];
        self.OutterRectange = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 150, 50)];
        [self addSubview:self.OutterRectange];
        [self addSubview:_InnerRactange];
        
        self.InnerRactange.backgroundColor= [UIColor grayColor ];
        self.OutterRectange.backgroundColor= [UIColor redColor];
        
        self.Label= [[UILabel alloc] initWithFrame:CGRectMake(50, 0, 50, 50)];
        [self addSubview:self.Label];
        
        //Create Minus Button
        self.MinusButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.MinusButton.frame= CGRectMake(0, 0, 50, 50);
        [self.MinusButton setTitle:@"-" forState:UIControlStateNormal];
        [self addSubview:self.MinusButton];
        
        //Create Plus Button
        self.Plusbutton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.Plusbutton.frame= CGRectMake(100, 0, 50, 50);
        [self.Plusbutton setTitle:@"+" forState:UIControlStateNormal];
        [self addSubview:self.Plusbutton];
        
        //Trigger the Function
        [self.Plusbutton addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
        
        [self.MinusButton addTarget:self action:@selector(minus) forControlEvents:UIControlEventTouchUpInside];
        
        
}
    return self;
}


//add Function

-(void)add {
    int a= self.Label.text.integerValue;
    a++;
    self.Label.text = [NSString stringWithFormat:@"%d",a ];
    

    
}

//Subtract Function

-(void)minus {
    int a= self.Label.text.integerValue;
    a--;
    self.Label.text = [NSString stringWithFormat:@"%d",a ];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
