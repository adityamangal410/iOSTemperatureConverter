//
//  TemperatureViewController.m
//  TemperatureConverter
//
//  Created by Aditya Mangal on 8/4/13.
//  Copyright (c) 2013 Y.CORP.YAHOO.COM\amangal. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController ()

- (void) updateValues;

@end

@implementation TemperatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Temperature";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.convertButton addTarget:self action:@selector(updateValues) forControlEvents:UIControlEventTouchUpInside];
    
    [self updateValues];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private Methods

- (void) updateValues {
    float fahrenheitValue = [self.fahrenheitTextField.text floatValue];
    float celsiusValue = [self.celsiusTextField.text floatValue];
    
    if (fahrenheitValue !=0) {
        celsiusValue = (fahrenheitValue -32)/1.8;
        fahrenheitValue = 0;
    } else if (celsiusValue !=0) {
        fahrenheitValue = (celsiusValue * 1.8) + 32;
        celsiusValue =0;
    }
    else{
        fahrenheitValue = 0;
        celsiusValue = 0;
    }
    
    self.fahrenheitTextField.text = [NSString stringWithFormat:@"%0.2f F", fahrenheitValue];
    self.celsiusTextField.text = [NSString stringWithFormat:@"%0.2f C", celsiusValue];
}

@end
