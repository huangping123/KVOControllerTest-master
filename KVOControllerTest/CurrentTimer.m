//
//  CurrentTimer.m
//  KVOControllerTest
//
//  Created by iBlock on 14-3-17.
//  Copyright (c) 2014年 iBlock. All rights reserved.
//

#import "CurrentTimer.h"

@interface CurrentTimer ()

@property (nonatomic,strong) NSDate *date1;
@end

@implementation CurrentTimer

- (id)init
{
    self = [super init];
    
    if (self)
    {
        [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(changeTimer:) userInfo:nil repeats:YES];
    }
    
    return self;
}

- (void)changeTimer:(NSTimer *)timer
{
    self.date1 = [NSDate date];
}


@end
