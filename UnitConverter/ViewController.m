//
//  ViewController.m
//  UnitConverter
//
//  Created by April Polubiec on 4/13/19.
//  Copyright © 2019 April Polubiec. All rights reserved.
//

#import "ViewController.h"

double lbToOz(double lb){
    double oz;
    oz = 16*lb;
    return oz;
}

double lbToKg(double lb){
    double kg;
    kg = 0.453592*lb;
    return kg;
}

double lbToG(double lb){
    double g;
    g = 453.592*lb;
    return g;
}

@interface ViewController ()
//Variable of type UITextField pointer
@property (weak, nonatomic) IBOutlet UITextField *inputField;

//Variable of type UISegmentedControl pointer
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;

//Variable of type UILabel pointer
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    double outputValue;
    
   //if statement to set outputField string based on which button is selected
    if(self.segmentController.selectedSegmentIndex==0)
    {
        outputValue = lbToOz(userInput);
    }
    else if(self.segmentController.selectedSegmentIndex == 1)
    {
        outputValue = lbToKg(userInput);
    }
    else
    {
        outputValue = lbToG(userInput);
    }
    [buf appendString: [@(outputValue) stringValue]];
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
