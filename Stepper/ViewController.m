//
//  ViewController.m
//  Stepper
//
//  Created by Bryan  Miller on 6/30/16.
//  Copyright © 2016 TheIronYard. All rights reserved.
//

#import "ViewController.h"
#import "StepperView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    StepperView *Stepper= [[StepperView alloc] initWithFrame:CGRectMake(0, 100, 150, 50)];
    [self.view addSubview:Stepper];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
