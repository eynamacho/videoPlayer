//
//  ViewController.m
//  videoPlayer
//
//  Created by Siti Azreena on 10/7/14.
//  Copyright (c) 2014 Brainstorm Technologies Sdn Bhd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize movieController;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self performSelector:@selector(playMovie) withObject:nil afterDelay:2];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)playMovie
{
    NSString *stringPath = [[NSBundle mainBundle] pathForResource:@"sample" ofType:@"m4v"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:url];
    movieController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    [self presentViewController:movieController animated:YES completion:^{ NSLog(@"Playing movie from %@", stringPath); }];
    [movieController.moviePlayer play];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
