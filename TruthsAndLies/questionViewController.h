//
//  questionViewController.h
//  TruthsAndLies
//
//  Created by DetroitLabs on 6/2/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface questionViewController : UIViewController
@property NSString *selectedQuestion;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UIButton *yesButton;
@property (weak, nonatomic) IBOutlet UIButton *noButton;



@end
