//
//  RPSpinner.m
//  spinner
//
//  Created by rpoolos1951 on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RPSpinner.h"

@implementation RPSpinner

@synthesize datasource;
@synthesize delegate;

@synthesize items;

+ (RPSpinner *)spinnerWithRadius:(CGFloat)radius atCenter:(CGPoint)center
{
    RPSpinner *spinner = [[RPSpinner alloc] initWithRadius:radius atCenter:center];
    
    return spinner;
}

- (id)initWithRadius:(CGFloat)radius atCenter:(CGPoint)center
{
    self = [super initWithFrame:CGRectMake(center.x, center.y, radius*2.0, radius*2.0)];
    if (self) {
        for (int i = 0; i < [self.datasource numberOfItemsInSpinner:self]; i++) {
            RPSpinnerCell *cell = [self.datasource cellForIndex:i];
            
            // Calculate center of cell. Start at self.center and iterate around the circle in angle chucks equal to 360/number of items.
            cell.center = CGPointMake(self.center.x, self.center.y+radius);
            
            [self addSubview:cell];
        }
    }
    return self;
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
