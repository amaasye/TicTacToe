//
//  ViewController.m
//  TicTacToe
//
//  Created by Syed Amaanullah on 1/8/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
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
@property BOOL foundLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (IBAction)onLabelTapped:(UITapGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];
    NSString *canPlay = [NSString new];

   NSArray *labels = [NSArray arrayWithObjects:self.labelOne, self.labelTwo, self.labelThree, self.labelFour, self.labelFive, self.labelSix, self.labelSeven, self.labelEight, self.labelNine, nil];

    for (UILabel *label in labels) {

        if (CGRectContainsPoint(label.frame, point)) {
            if ([label.text isEqualToString:canPlay]) {
                NSLog(@"canPlay");
                label.text = self.whichPlayerLabel.text;
                label.textColor = self.whichPlayerLabel.textColor;}
        }
    }

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
        NSLog(@"%@", whoWon);
    }

    if ([self.labelFour.text isEqualToString:self.labelFive.text] && [self.labelFive.text isEqualToString:self.labelSix.text]) {
        whoWon = self.labelFour.text;
        NSLog(@"%@", whoWon);
    }

    if ([self.labelSeven.text isEqualToString:self.labelEight.text] && [self.labelEight.text isEqualToString:self.labelNine.text]) {
        whoWon = self.labelSeven.text;
        NSLog(@"%@", whoWon);
    }

    if ([self.labelOne.text isEqualToString:self.labelFour.text] && [self.labelFour.text isEqualToString:self.labelSeven.text]) {
        whoWon = self.labelOne.text;
        NSLog(@"%@", whoWon);
    }

    if ([self.labelTwo.text isEqualToString:self.labelFive.text] && [self.labelFive.text isEqualToString:self.labelEight.text]) {
        whoWon = self.labelTwo.text;
        NSLog(@"%@", whoWon);
    }

    if ([self.labelThree.text isEqualToString:self.labelSix.text] && [self.labelSix.text isEqualToString:self.labelNine.text]) {
        whoWon = self.labelThree.text;
        NSLog(@"%@", whoWon);
    }

    if ([self.labelOne.text isEqualToString:self.labelFive.text] && [self.labelFive.text isEqualToString:self.labelNine.text]) {
        whoWon = self.labelOne.text;
        NSLog(@"%@", whoWon);
    }

    if ([self.labelThree.text isEqualToString:self.labelFive.text] && [self.labelFive.text isEqualToString:self.labelSeven.text]) {
        whoWon = self.labelThree.text;
        NSLog(@"%@", whoWon);
    }
}




@end
