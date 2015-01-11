//
//  ViewController.m
//  TicTacToe
//
//  Created by Syed Amaanullah on 1/8/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"


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
@property NSArray *labels;
@property NSString *whoWon;
@property UIControl *tapper;
@property CGPoint originalCenter;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.labels = [NSArray arrayWithObjects:self.labelOne, self.labelTwo, self.labelThree, self.labelFour, self.labelFive, self.labelSix, self.labelSeven, self.labelEight, self.labelNine, nil];
    self.whichPlayerLabel.text = @"x";
    if ([self.whichPlayerLabel.text  isEqual: @"x"]) {
        self.whichPlayerLabel.textColor = [UIColor blueColor];
    }
    if ([self.whichPlayerLabel.text  isEqual: @"o"]) {
        self.whichPlayerLabel.textColor = [UIColor redColor];
    }

    self.originalCenter = self.whichPlayerLabel.center;
}

- (IBAction)onLabelTapped:(UITapGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];

    //Enumerates through the array and checks to see if the point is in the label frame
    NSArray *labels = [NSArray arrayWithObjects:self.labelOne, self.labelTwo, self.labelThree, self.labelFour, self.labelFive, self.labelSix, self.labelSeven, self.labelEight, self.labelNine, nil];

    for (UILabel *label in labels) {
        if (CGRectContainsPoint(label.frame, point)) {
            NSString *canPlay = [NSString new];
            //UILabel *labelPressed = [[UILabel alloc] initWithFrame:label.frame];
            //[labelPressed setUserInteractionEnabled:NO];


            if ([label.text isEqualToString:canPlay]) {
                //Marks the Player's move
                label.text = self.whichPlayerLabel.text;
                label.textColor = self.whichPlayerLabel.textColor;

            }


            //Switches player whose turn it is
            if ([self.whichPlayerLabel.text isEqualToString: @"o"]) {
                self.whichPlayerLabel.text = @"x";
                self.whichPlayerLabel.textColor = [UIColor blueColor];
            } else {
                self.whichPlayerLabel.text = @"o";
                self.whichPlayerLabel.textColor = [UIColor redColor];
            }
        }

        NSString *whoWon = [NSString new];

        if ([self.labelOne.text isEqualToString:@"x"] &&
            [self.labelTwo.text isEqualToString:@"x"] &&
            [self.labelThree.text isEqualToString:@"x"])
        {
            self.whoWon =@"x";

        }

        if ([self.labelOne.text isEqualToString:@"o"] &&
            [self.labelTwo.text isEqualToString:@"o"] &&
            [self.labelThree.text isEqualToString:@"o"])
        {
            whoWon =@"o";
        }

        if ([self.labelFour.text isEqualToString:@"x"] &&
            [self.labelFive.text isEqualToString:@"x"] &&
            [self.labelSix.text isEqualToString:@"x"])
        {
            whoWon =@"x";
        }

        if ([self.labelFour.text isEqualToString:@"o"] &&
            [self.labelFive.text isEqualToString:@"o"] &&
            [self.labelSix.text isEqualToString:@"o"])
        {
            whoWon =@"o";
        }

        if ([self.labelSeven.text isEqualToString:@"x"] &&
            [self.labelEight.text isEqualToString:@"x"] &&
            [self.labelNine.text isEqualToString:@"x"])
        {
            whoWon =@"x";
        }

        if ([self.labelSeven.text isEqualToString:@"o"] &&
            [self.labelEight.text isEqualToString:@"o"] &&
            [self.labelNine.text isEqualToString:@"o"])
        {
            whoWon =@"o";
        }

        if ([self.labelOne.text isEqualToString:@"x"] &&
            [self.labelFour.text isEqualToString:@"x"] &&
            [self.labelSeven.text isEqualToString:@"x"])
        {
            whoWon =@"x";
        }

        if ([self.labelOne.text isEqualToString:@"o"] &&
            [self.labelFour.text isEqualToString:@"o"] &&
            [self.labelSeven.text isEqualToString:@"o"])
        {
            whoWon =@"o";
        }

        if ([self.labelTwo.text isEqualToString:@"x"] &&
            [self.labelFive.text isEqualToString:@"x"] &&
            [self.labelEight.text isEqualToString:@"x"])
        {
            whoWon =@"x";
        }

        if ([self.labelTwo.text isEqualToString:@"o"] &&
            [self.labelFive.text isEqualToString:@"o"] &&
            [self.labelEight.text isEqualToString:@"o"])
        {
            whoWon =@"o";
        }

        if ([self.labelThree.text isEqualToString:@"x"] &&
            [self.labelSix.text isEqualToString:@"x"] &&
            [self.labelNine.text isEqualToString:@"x"])
        {
            whoWon =@"x";
        }

        if ([self.labelThree.text isEqualToString:@"o"] &&
            [self.labelSix.text isEqualToString:@"o"] &&
            [self.labelNine.text isEqualToString:@"o"])
        {
            whoWon =@"o";
        }

        if ([self.labelOne.text isEqualToString:@"x"] &&
            [self.labelFive.text isEqualToString:@"x"] &&
            [self.labelNine.text isEqualToString:@"x"])
        {
            whoWon =@"x";
        }

        if ([self.labelOne.text isEqualToString:@"o"] &&
            [self.labelFive.text isEqualToString:@"o"] &&
            [self.labelNine.text isEqualToString:@"o"])
        {
            whoWon =@"o";
        }

        if ([self.labelThree.text isEqualToString:@"x"] &&
            [self.labelFive.text isEqualToString:@"x"] &&
            [self.labelSeven.text isEqualToString:@"x"])
        {
            whoWon =@"x";
        }

        if ([self.labelThree.text isEqualToString:@"o"] &&
            [self.labelFive.text isEqualToString:@"o"] &&
            [self.labelSeven.text isEqualToString:@"o"])
        {
            whoWon =@"o";
        }

   /*   if ([whoWon isEqualToString:@"x"]) {
            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Winner!" message:[NSString stringWithFormat:@"Player %@ won the game!", whoWon] delegate:self cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
            [winnerAlert show];
        }

        if ([whoWon isEqualToString:@"o"]) {
            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Winner!" message:[NSString stringWithFormat:@"Player %@ won the game!", whoWon] delegate:self cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
            [winnerAlert show];
        } */

    }

}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {


    if (buttonIndex == [alertView cancelButtonIndex]) {
        for (UILabel *label in self.labels) {
            label.text = @"";
        }
    }
}

- (void)showWinnerAlert: (NSString *)whoWon {
   UIAlertView *winnerAlert = [[UIAlertView alloc] init];
    winnerAlert.delegate = self;
        if ([whoWon isEqualToString:@"X"])
            {winnerAlert.title = @"Player X Wins!";
        } else if ([whoWon isEqualToString:@"O"])
            {winnerAlert.title = @"Player O Wins!";}
            else if ([whoWon isEqualToString:@"Tie!"])
            {winnerAlert.title = @"Tie!";}

    [winnerAlert addButtonWithTitle:@"Play Again?"];
    [winnerAlert show];
        
}







- (IBAction)onLabelDragged:(UIPanGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];
    self.whichPlayerLabel.center = point;

    for (UILabel *label in self.labels) {
    
    if (CGRectContainsPoint(label.frame, point) && [label.text isEqual: @""]){
        label.text = self.whichPlayerLabel.text;

    }
        if (sender.state == UIGestureRecognizerStateEnded) {
            [UIView animateWithDuration:1.0f animations:^{
                self.whichPlayerLabel.center = self.originalCenter;
            } completion:^(BOOL finished) {
                if (finished) {
                    if ([self.whichPlayerLabel.text isEqualToString: @"o"]) {
                        self.whichPlayerLabel.text = @"x";
                        self.whichPlayerLabel.textColor = [UIColor blueColor];}
                    else {
                        self.whichPlayerLabel.text = @"o";
                        self.whichPlayerLabel.textColor = [UIColor redColor];}
                }
            }];
}
}}

//Doing the webview step now to get it out of the way
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)webSegue sender:(id)sender {
    return YES;
}

- (IBAction)onHelpButtonPressed:(UIButton *)sender {
    [self performSegueWithIdentifier: @"webSegue" sender:self];


}

-(IBAction)unwindAndReturn:(UIStoryboardSegue *)sender {
    NSLog(@"Back Home");
}





@end
