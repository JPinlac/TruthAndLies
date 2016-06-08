//
//  ViewController.m
//  TruthsAndLies
//
//  Created by DetroitLabs on 6/2/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "ViewController.h"
#import "questionViewController.h"
@interface ViewController ()

@property NSString *selectedQuestion;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *ttap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(turtleTapped:)];
    UITapGestureRecognizer *ctap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(catTapped:)];
    UITapGestureRecognizer *dtap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dogTapped:)];
    [_turtleView addGestureRecognizer:ttap];
    [_catView addGestureRecognizer:ctap];
    [_dogView addGestureRecognizer:dtap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)turtleTapped:(UIGestureRecognizer *)tap{
    NSLog(@"Turtle");
    _selectedQuestion = @"Turtle";
    [self performSegueWithIdentifier:@"questionSeg" sender:self];
}
-(void)catTapped:(UIGestureRecognizer *)tap{
    NSLog(@"Cat");
    _selectedQuestion = @"Cat";
    [self performSegueWithIdentifier:@"questionSeg" sender:self];
}
-(void)dogTapped:(UIGestureRecognizer *)tap{
    NSLog(@"Dog");
    _selectedQuestion = @"Dog";
    [self performSegueWithIdentifier:@"questionSeg" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"questionSeg"])
    {
        questionViewController *qc = [segue destinationViewController];
        qc.selectedQuestion = _selectedQuestion;
    }
}
@end
