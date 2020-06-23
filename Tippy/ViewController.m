//
//  ViewController.m
//  Tippy
//
//  Created by Alyssa Tan on 6/23/20.
//  Copyright © 2020 Alyssa Tan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    NSLog(@"Hello");
    // self.view.endEditing(YES);
    [self.view endEditing:YES];
}

- (IBAction)onEdit:(id)sender {
    double bill = [self.billField.text doubleValue];
    
    NSArray *percentages = @[@(0.15), @(0.2), @(0.22)];
    //percentages[self.tipControl.selectedSegmentIndex].doubleValue()
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    double tip = tipPercentage * bill;
    double total = tip + bill;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

- (IBAction)onEditingBegin:(id)sender {
//    [UIView animateWithDuration:0.2 animations:^{
//    self.billField.frame = CGRectMake(self.billField.frame.origin.x, self.billField.frame.origin.y + 30, self.billField.frame.size.width, self.billField.frame.size.height);
//        self.tipLabel.alpha = 0;
//    }];
}

- (IBAction)onEditingEnd:(id)sender {
//    CGRect newFrame = self.billField.frame;
//    newFrame.origin.y -= 30;
//
//    [UIView animateWithDuration:0.2 animations:^{
//        self.billField.frame = newFrame;
//        self.tipLabel.alpha = 1;
//    }];

}

@end
