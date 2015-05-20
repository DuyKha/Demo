//
//  CustomView.h
//  coregraphicsDemo
//
//  Created by Duy Kha on 5/20/15.
//  Copyright (c) 2015 Duy Kha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView {
    CGPoint arrowPoint;
    CGFloat arrowHeight;
}
@property (nonatomic, assign) CGPoint arrowPoint;
@property (nonatomic, assign) CGFloat arrowHeight;

- (void)setArrowAtPoint:(CGPoint)arrPoint;
- (void)setArrowWithHeight:(CGFloat)arrHeight;

@end
