//
//  ViewController.m
//  EquidistantRectangles
//
//  Created by Admin on 04.07.17.
//  Copyright © 2017 ilya. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

#define SIDE 30

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray<UIView *> *rects;

@end

@implementation ViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.rects = [NSMutableArray new];
    for(NSUInteger i = 0; i < 4; i++) {
        UIView *rect = [UIView new];
        rect.backgroundColor = [UIColor greenColor];
        [self.rects addObject:rect];
        [self.view addSubview:rect];
    }
}

-(void) viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    for(NSUInteger i = 0; i < 4; i++) {
        [self.rects[i] mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(@SIDE);
            make.height.equalTo(@SIDE);
            make.centerY.equalTo(self.view.mas_centerY);
            NSNumber *leadValue = @((self.view.frame.size.width - 4 * SIDE) * (i + 1) / 5 + i * SIDE);
            make.leading.equalTo(leadValue);
        }];
    }
}



@end
