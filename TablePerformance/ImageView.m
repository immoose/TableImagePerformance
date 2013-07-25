//
//  ImageView.m
//  TablePerformance
//
//  Created by Yifeng Li on 7/25/13.
//  Copyright (c) 2013 Yifeng LI. All rights reserved.
//

#import "ImageView.h"
#import <mach/mach_time.h>
#import <mach/mach.h>

@implementation ImageView

CGRect const imageRect = {{0, 0}, {306, 276}};
CGPoint const imagePoint = {0, 0};

- (void)awakeFromNib
{
  if (!self.image) {
    self.image = [UIImage imageNamed:@"feed_item_bg.png"];
  }
}

#define LABEL_TAG 1

- (void)drawRect:(CGRect)rect
{
  if (CGRectEqualToRect(rect, imageRect)) {
    uint64_t start = mach_absolute_time();
    [self.image drawAtPoint:imagePoint];
    uint64_t drawTime = mach_absolute_time() - start;
    NSString *text = [[NSString alloc] initWithFormat:@"%lld", drawTime];
    UILabel *label = (UILabel*)[self viewWithTag:LABEL_TAG];
    label.text = text;
  }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
