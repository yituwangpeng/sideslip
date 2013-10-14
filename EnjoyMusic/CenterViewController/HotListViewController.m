//
//  HotListViewController.m
//  EnjoyMusic
//
//  Created by 王鹏 on 13-9-16.
//  Copyright (c) 2013年 王鹏. All rights reserved.
//

#import "HotListViewController.h"

@interface HotListViewController ()

@end

@implementation HotListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    lable.backgroundColor = [UIColor orangeColor];
    lable.text = @"HotList";
    [self.view addSubview:lable];
    [lable release];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
