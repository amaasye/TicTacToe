//
//  ViewController.m
//  TicTacToe
//
//  Created by Syed Amaanullah on 1/8/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelThree;
@property (weak, nonatomic) IBOutlet UILabel *labelFour;
@property (weak, nonatomic) IBOutlet UILabel *labelFive;
@property (weak, nonatomic) IBOutlet UILabel *labelSix;
@property (weak, nonatomic) IBOutlet UILabel *labelSeven;
@property (weak, nonatomic) IBOutlet UILabel *labelEight;
@property (weak, nonatomic) IBOutlet UILabel *labelNine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)onLabelTapped:(UITapGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];

    //Enumerates through the array and checks to see if the point is in the label frame
    NSArray *labels = [NSArray arrayWithObjects:self.labelOne, self.labelTwo, self.labelThree, self.labelFour, self.labelFive, self.labelSix, self.labelSeven, self.labelEight, self.labelNine, nil];

    for (UILabel *label in labels) {
        if (CGRectContainsPoint(label.frame, point)) {
            NSString *canPlay = [NSString new];
            if ([label.text isEqualToString:canPlay]) {
                //Marks the Player's move
                label.text = self.whichPlayerLabel.text;
                label.textColor = self.whichPlayerLabel.textColor;
            }
        }
    }

    //Switches player whose turn it is
    if ([self.whichPlayerLabel.text isEqualToString: @"o"]) {
        self.whichPlayerLabel.text = @"x";
        self.whichPlayerLabel.textColor = [UIColor blueColor];
    } else {
        self.whichPlayerLabel.text = @"o";
        self.whichPlayerLabel.textColor = [UIColor redColor];
    }

    //Determines winner
    NSString *whoWon = [NSString new];
    if ([self.labelOne.text isEqualToString:self.labelTwo.text] && [self.labelTwo.text isEqualToString:self.labelThree.text]) {
        whoWon = self.labelOne.text;
    }

    if ([self.labelFour.text isEqualToString:self.labelFive.text] && [self.labelFive.text isEqualToString:self.labelSix.text]) {
        whoWon = self.labelFour.text;
    }

    if ([self.labelSeven.text isEqualToString:self.labelEight.text] && [self.labelEight.text isEqualToString:self.labelNine.text]) {
        whoWon = self.labelSeven.text;
    }

    if ([self.labelOne.text isEqualToString:self.labelFour.text] && [self.labelFour.text isEqualToString:self.labelSeven.text]) {
        whoWon = self.labelOne.text;
    }

    if ([self.labelTwo.text isEqualToString:self.labelFive.text] && [self.labelFive.text isEqualToString:self.labelEight.text]) {
        whoWon = self.labelTwo.text;
    }

    if ([self.labelThree.text isEqualToString:self.labelSix.text] && [self.labelSix.text isEqualToString:self.labelNine.text]) {
        whoWon = self.labelThree.text;
    }

    if ([self.labelOne.text isEqualToString:self.labelFive.text] && [self.labelFive.text isEqualToString:self.labelNine.text]) {
        whoWon = self.labelOne.text;
    }

    if ([self.labelThree.text isEqualToString:self.labelFive.text] && [self.labelFive.text isEqualToString:self.labelSeven.text]) {
        whoWon = self.labelThree.text;
    }

    //Ask Rich about alert controller
    if ([whoWon isEqualToString:@"x"] || [whoWon isEqualToString:@"o"]) {
        UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Winner!" message:@"Somebody won" delegate:self cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
        [winnerAlert show];
    }

}

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex != alertView.cancelButtonIndex) {
        NSLog(@"Martha");
    }

}



@end
