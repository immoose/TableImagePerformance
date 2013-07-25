//
//  ThirdImageView.m
//  TablePerformance
//
//  Created by Yifeng Li on 7/25/13.
//  Copyright (c) 2013 Yifeng LI. All rights reserved.
//

#import "ThirdImageView.h"
#import <mach/mach.h>
#import <mach/mach_time.h>

@implementation ThirdImageView

- (UIImage*)resizeImage:(UIImage*)image toWidth:(NSInteger)width height:(NSInteger)height
{
  CGSize size = CGSizeMake(width, height);
  if (NULL != UIGraphicsBeginImageContextWithOptions) {
    UIGraphicsBeginImageContextWithOptions(size, YES, 0);
//    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
  } else {
    UIGraphicsBeginImageContext(size);
  }
  CGContextRef context = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(context, 0.0, height);
  CGContextScaleCTM(context, 1.0, -1.0);
  
  CGContextSetBlendMode(context, kCGBlendModeCopy);
  CGContextDrawImage(context, CGRectMake(0, 0, width, height), image.CGImage);
  
  UIImage *imageOut = UIGraphicsGetImageFromCurrentImageContext();
  return imageOut;
}


- (void)awakeFromNib
{
  if (!self.image) {
    self.image = [self resizeImage:[UIImage imageNamed:@"feed_item_bg_3.png"] toWidth:imageRect.size.width height:imageRect.size.height];
  }
}

#define LABEL_TAG 3

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
