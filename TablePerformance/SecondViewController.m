//
//  SecondViewController.m
//  TablePerformance
//
//  Created by Yifeng Li on 7/25/13.
//  Copyright (c) 2013 Yifeng LI. All rights reserved.
//

#import "SecondViewController.h"
#import "SecondImageView.h"
#import "ImageView.h"
@interface SecondViewController ()
@property (strong, nonatomic) IBOutlet SecondImageView *mainview;

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
- (IBAction)handelBtnClicked:(id)sender {
  [self.mainview setNeedsDisplayInRect:imageRect];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
