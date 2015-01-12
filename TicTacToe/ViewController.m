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
@property UIControl *tapper;
@property CGPoint originalCenter;
@property NSTimer *timer;
@property int mainInt;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;




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
    [self startTimer];
}

-(void)startTimer {
    self.mainInt = 10;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
}

-(void)countDown {
    self.mainInt -= 1;
    self.timerLabel.text = [NSString stringWithFormat:@"%i", self.mainInt];
    if (self.mainInt == 0) {    
        [self.timer invalidate];
    }

}

-(void)resetTimer {
    self.mainInt = 10;
    [self countDown];
}



- (void)winnerAlert: (NSString *)winner {
    UIAlertView *alertView = [[UIAlertView alloc] init];
    alertView.delegate = self;
    if ([winner isEqualToString:@"x"]) {
        alertView.title = @"Player One Wins!";
    } else if ([winner isEqualToString:@"o"]) {
        alertView.title = @"Player Two Wins!";
    } else if ([winner isEqualToString:@"Tie!"]) {
        alertView.title = @"Tie!";
    }
    [alertView addButtonWithTitle:@"New Game?"];
    [alertView show];

}

-(NSString *)whoWon {
        NSString *winner;

    if ([self.labelOne.text isEqualToString:@"x"] &&
        [self.labelTwo.text isEqualToString:@"x"] &&
        [self.labelThree.text isEqualToString:@"x"])
    {
        winner =@"x";
        

    }

    if ([self.labelOne.text isEqualToString:@"o"] &&
        [self.labelTwo.text isEqualToString:@"o"] &&
        [self.labelThree.text isEqualToString:@"o"])
    {
        winner =@"o";
    }

    if ([self.labelFour.text isEqualToString:@"x"] &&
        [self.labelFive.text isEqualToString:@"x"] &&
        [self.labelSix.text isEqualToString:@"x"])
    {
        winner =@"x";
    }

    if ([self.labelFour.text isEqualToString:@"o"] &&
        [self.labelFive.text isEqualToString:@"o"] &&
        [self.labelSix.text isEqualToString:@"o"])
    {
        winner =@"o";
    }

    if ([self.labelSeven.text isEqualToString:@"x"] &&
        [self.labelEight.text isEqualToString:@"x"] &&
        [self.labelNine.text isEqualToString:@"x"])
    {
        winner =@"x";
    }

    if ([self.labelSeven.text isEqualToString:@"o"] &&
        [self.labelEight.text isEqualToString:@"o"] &&
        [self.labelNine.text isEqualToString:@"o"])
    {
        winner =@"o";
    }

    if ([self.labelOne.text isEqualToString:@"x"] &&
        [self.labelFour.text isEqualToString:@"x"] &&
        [self.labelSeven.text isEqualToString:@"x"])
    {
        winner =@"x";
    }

    if ([self.labelOne.text isEqualToString:@"o"] &&
        [self.labelFour.text isEqualToString:@"o"] &&
        [self.labelSeven.text isEqualToString:@"o"])
    {
        winner =@"o";
    }

    if ([self.labelTwo.text isEqualToString:@"x"] &&
        [self.labelFive.text isEqualToString:@"x"] &&
        [self.labelEight.text isEqualToString:@"x"])
    {
        winner =@"x";
    }

    if ([self.labelTwo.text isEqualToString:@"o"] &&
        [self.labelFive.text isEqualToString:@"o"] &&
        [self.labelEight.text isEqualToString:@"o"])
    {
        winner =@"o";
    }

    if ([self.labelThree.text isEqualToString:@"x"] &&
        [self.labelSix.text isEqualToString:@"x"] &&
        [self.labelNine.text isEqualToString:@"x"])
    {
        winner =@"x";
    }

    if ([self.labelThree.text isEqualToString:@"o"] &&
        [self.labelSix.text isEqualToString:@"o"] &&
        [self.labelNine.text isEqualToString:@"o"])
    {
        winner =@"o";
    }

    if ([self.labelOne.text isEqualToString:@"x"] &&
        [self.labelFive.text isEqualToString:@"x"] &&
        [self.labelNine.text isEqualToString:@"x"])
    {
        winner =@"x";
    }

    if ([self.labelOne.text isEqualToString:@"o"] &&
        [self.labelFive.text isEqualToString:@"o"] &&
        [self.labelNine.text isEqualToString:@"o"])
    {
        winner =@"o";
    }

    if ([self.labelThree.text isEqualToString:@"x"] &&
        [self.labelFive.text isEqualToString:@"x"] &&
        [self.labelSeven.text isEqualToString:@"x"])
    {
        winner =@"x";
    }

    if ([self.labelThree.text isEqualToString:@"o"] &&
        [self.labelFive.text isEqualToString:@"o"] &&
        [self.labelSeven.text isEqualToString:@"o"])
    {
        winner =@"o";
    }

    return winner;

}

- (IBAction)onLabelTapped:(UITapGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];
    [self resetTimer];

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
                //Switches player whose turn it is
                if ([self.whichPlayerLabel.text isEqualToString: @"o"]) {
                    self.whichPlayerLabel.text = @"x";
                    self.whichPlayerLabel.textColor = [UIColor blueColor];
                } else {
                    self.whichPlayerLabel.text = @"o";
                    self.whichPlayerLabel.textColor = [UIColor redColor];
                }
                }
        }




    }

}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {


    if (buttonIndex == [alertView cancelButtonIndex]) {
        for (UILabel *label in self.labels) {
            label.text = @"";
        }
    }
}










//lets user drag and drop their letters rather than clicking
//only allows placement of letter into new labels (empty strings)
//upon completion of the gesture and animation, changes the whichplayer label
- (IBAction)onLabelDragged:(UIPanGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];
    self.whichPlayerLabel.center = point;

    for (UILabel *label in self.labels) {

        if (sender.state == UIGestureRecognizerStateEnded) {

            if (CGRectContainsPoint(label.frame, point) && [label.text isEqual: @""]){
                label.text = self.whichPlayerLabel.text;
                label.textColor = self.whichPlayerLabel.textColor;
                if ([self.whichPlayerLabel.text isEqualToString: @"o"]) {
                    self.whichPlayerLabel.text = @"x";
                    self.whichPlayerLabel.textColor = [UIColor blueColor];}
                else {
                    self.whichPlayerLabel.text = @"o";
                    self.whichPlayerLabel.textColor = [UIColor redColor];}}

            [UIView animateWithDuration:0.5f animations:^{
                self.whichPlayerLabel.center = self.originalCenter;
                [self resetTimer];} ];

    }
    } }

//Segues to the webview from user tap of the help button. Unwinds and brings back.
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
