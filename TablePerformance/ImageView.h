//
//  ImageView.h
//  TablePerformance
//
//  Created by Yifeng Li on 7/25/13.
//  Copyright (c) 2013 Yifeng LI. All rights reserved.
//

#import <UIKit/UIKit.h>

extern CGRect const imageRect;
extern CGPoint const imagePoint;

@interface ImageView : UIView

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) IBOutlet UIButton *btn;

@end
