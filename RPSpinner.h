//
//  RPSpinner.h
//  spinner
//
//  Created by rpoolos1951 on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RPSpinnerCell.h"

@class RPSpinner;

@protocol RPSpinnerDatasource <NSObject>

- (NSInteger)numberOfItemsInSpinner:(RPSpinner *)spinner;
- (RPSpinnerCell *)cellForIndex:(int)index;

@end

@protocol RPSpinnerDelegate <NSObject>

- (void)didSelectItemAtIndex:(int)index;
- (void)spinnerDidSpin;

@end

@interface RPSpinner : UIView

@property (weak, nonatomic) id <RPSpinnerDatasource> datasource;
@property (weak, nonatomic) id <RPSpinnerDelegate> delegate;

@property (nonatomic, strong) NSArray *items;


+ (RPSpinner *)spinnerWithRadius:(CGFloat)radius atCenter:(CGPoint)center;
- (id)initWithRadius:(CGFloat)radius atCenter:(CGPoint)center;

@end