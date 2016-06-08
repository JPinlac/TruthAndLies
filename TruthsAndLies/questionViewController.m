//
//  questionViewController.m
//  TruthsAndLies
//
//  Created by DetroitLabs on 6/2/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "questionViewController.h"

@interface questionViewController ()

@end

@implementation questionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initQuestion];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backTap:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)initQuestion{
    if([_selectedQuestion  isEqual: @"Turtle"]){
        _questionLabel.text = @"Am I a ninja or a turtle?";
        
        [_yesButton setTitle:[NSString stringWithFormat:@"You're a flipping 😇 😂 %C NINJA!", 0xe14c] forState:UIControlStateNormal];
        [_noButton setTitle:@"What?" forState:UIControlStateNormal];
        
    } else if ([_selectedQuestion isEqual: @"Cat"]){
        _questionLabel.text = @"Are cats the greatest?";
        
        [_yesButton setTitle:@"YesHH!HH!!!!" forState:UIControlStateNormal];
        [_noButton setTitle:[NSString stringWithFormat:@"No, you're the greatest %C", 0xe105] forState:UIControlStateNormal];
        
    } else {
        _questionLabel.text = @"Am I dog?";
        
        [_yesButton setTitle:@"Yes, you're a dog..." forState:UIControlStateNormal];
        [_noButton setTitle:[NSString stringWithFormat:@"No %C", 0xe05a] forState:UIControlStateNormal];
        
    }
}

-(IBAction)yesPress:(id)sender{
    NSString *OKText=@"OK";
    NSString *alertTitle=@"Oops!";
    NSString *message=@"Something went wrong.";
    if([_selectedQuestion  isEqual: @"Turtle"]){
        alertTitle = @"Yes";
        message = @"I am a ninja";
    } else if ([_selectedQuestion isEqual: @"Cat"]){
        alertTitle = @"Yes!";
        message = @"Cats are awesome";
    } else {
        alertTitle = @"No!";
        message = @"I'm a person.";
    }
    UIAlertController *alertView = [UIAlertController alertControllerWithTitle:alertTitle message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:OKText style:UIAlertActionStyleCancel handler:nil];
    [alertView addAction:alertAction];
    [self presentViewController:alertView animated:YES completion:nil];
}
-(IBAction)noPress:(id)sender{
    NSString *OKText=@"OK";
    NSString *alertTitle=@"Oops!";
    NSString *message=@"Something went wrong.";
    if([_selectedQuestion  isEqual: @"Turtle"]){
        alertTitle = @"No";
        message = @"I didn't catch it because I'm slow";
    } else if ([_selectedQuestion isEqual: @"Cat"]){
        alertTitle = @"Incorrect";
        message = @"Thanks for flattering me though.";
    } else {
        alertTitle = @"Correct!";
        message = @"I am not a dog.";
    }
    UIAlertController *alertView = [UIAlertController alertControllerWithTitle:alertTitle message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:OKText style:UIAlertActionStyleCancel handler:nil];
    [alertView addAction:alertAction];
    [self presentViewController:alertView animated:YES completion:nil];
}

@end
