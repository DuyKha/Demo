//
//  CustomView.m
//  coregraphicsDemo
//
//  Created by Duy Kha on 5/20/15.
//  Copyright (c) 2015 Duy Kha. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView
@synthesize arrowPoint,arrowHeight;

- (void)setArrowAtPoint:(CGPoint)arrPoint
{
    arrowPoint = arrPoint;
    [self setNeedsDisplay];
}

- (void)setArrowWithHeight:(CGFloat)arrHeight
{
    arrowHeight = arrHeight;
    [self setNeedsDisplay];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    UIColor *backgroundColour = [UIColor greenColor];
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGRect rect_ = CGRectMake(CGRectGetMinX(rect), CGRectGetMinY(rect) + arrowHeight, CGRectGetWidth(rect), CGRectGetHeight(rect) - arrowHeight);
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect:rect_  cornerRadius: 0];
    [backgroundColour setFill];
    [rectanglePath fill];

    CGContextSaveGState(context);
    UIBezierPath *aPath = [UIBezierPath bezierPath];
    [aPath moveToPoint:CGPointMake(arrowPoint.x - arrowHeight/2.0, arrowHeight)];
    [aPath addLineToPoint:CGPointMake(arrowPoint.x, 0)];
    [aPath addLineToPoint:CGPointMake(arrowPoint.x + arrowHeight/2.0, arrowHeight)];
    [aPath closePath];
    [backgroundColour setFill];
    [aPath fill];
    
    CGContextRestoreGState(context);

}


@end
