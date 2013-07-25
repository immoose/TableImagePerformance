//
//  ViewController.m
//  TablePerformance
//
//  Created by Yifeng Li on 7/25/13.
//  Copyright (c) 2013 Yifeng LI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)handleBtnClicked:(id)sender
{
  [self.mainview setNeedsDisplayInRect:imageRect];
}

@end
