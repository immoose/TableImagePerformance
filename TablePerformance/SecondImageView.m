//
//  SecondImageView.m
//  TablePerformance
//
//  Created by Yifeng Li on 7/25/13.
//  Copyright (c) 2013 Yifeng LI. All rights reserved.
//

#import "SecondImageView.h"
#import "ImageView.h"
#import <mach/mach_time.h>
#import <mach/mach.h>

@implementation SecondImageView

- (void)awakeFromNib
{
  if (!self.image) {
    if (NULL != UIGraphicsBeginImageContextWithOptions) {
//      UIGraphicsBeginImageContextWithOptions(imageRect.size, NO, 0);
      UIGraphicsBeginImageContextWithOptions(imageRect.size, YES, 0);
    } else {
      UIGraphicsBeginImageContext(imageRect.size);
    }
    self.image = [UIImage imageNamed:@"feed_item_bg_2.png"];
    [self.image drawInRect:imageRect];
    self.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }
}

#define LABEL_TAG 2

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


@end
