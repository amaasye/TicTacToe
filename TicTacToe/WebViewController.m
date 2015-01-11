//
//  WebViewController.m
//  TicTacToe
//
//  Created by Syed Amaanullah on 1/10/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    NSURL *url = [NSURL URLWithString:@"https://en.wikipedia.org/wiki/Tic-tac-toe"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];

}





@end
