//
//  TemperatureViewController.h
//  TemperatureConverter
//
//  Created by Aditya Mangal on 8/4/13.
//  Copyright (c) 2013 Y.CORP.YAHOO.COM\amangal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TemperatureViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) IBOutlet UITextField *fahrenheitTextField;
@property (nonatomic, strong) IBOutlet UITextField *celsiusTextField;
@property (nonatomic, strong) IBOutlet UIButton *convertButton;

@end
