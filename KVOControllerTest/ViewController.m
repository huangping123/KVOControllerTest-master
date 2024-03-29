//
//  ViewController.m
//  KVOControllerTest
//
//  Created by iBlock on 14-3-17.
//  Copyright (c) 2014年 iBlock. All rights reserved.
//

#import "ViewController.h"
#import <FBKVOController.h>

#import "CurrentTimer.h"

@interface ViewController ()
{
    FBKVOController *kvoController;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    kvoController = [FBKVOController controllerWithObserver:self];
    
    CurrentTimer *timer = [[CurrentTimer alloc] init];
    
    [kvoController observe:timer keyPath:@"date1" options:NSKeyValueObservingOptionOld |NSKeyValueObservingOptionNew block:^(ViewController *view, CurrentTimer *timer, NSDictionary *change) {
        NSString *dateStr = [NSString stringWithFormat:@"%@", change[NSKeyValueChangeNewKey]];
        self.showDate.text = dateStr;
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
