//
//  CenterViewController.m
//  EnjoyMusic
//
//  Created by 王鹏 on 13-9-16.
//  Copyright (c) 2013年 王鹏. All rights reserved.
//

#import "HomeViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "MMDrawerBarButtonItem.h"
#import "UIViewController+MMDrawerController.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

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
    lable.text = @"Home";
    [self.view addSubview:lable];
    [lable release];
   //设置navigationBar
    [self setupLeftMenuButton];
    [self setupRightMenuButton];
    [self.navigationController.navigationBar setTintColor:[UIColor
                                                           colorWithRed:78.0/255.0
                                                           green:156.0/255.0
                                                           blue:206.0/255.0
                                                           alpha:1.0]];
    
    
    [self.navigationController.view.layer setCornerRadius:10.0f];
    
    
    UIView *backView = [[UIView alloc] init];
    [backView setBackgroundColor:[UIColor colorWithRed:208.0/255.0
                                                 green:208.0/255.0
                                                  blue:208.0/255.0
                                                 alpha:1.0]];
    

	// Do any additional setup after loading the view.
}
- (void)postNotification12:(UIButton *)button
{
       [[NSNotificationCenter defaultCenter] postNotificationName:@"enterSonglist" object:nil userInfo:nil];
}
//
-(void)setupLeftMenuButton{
    MMDrawerBarButtonItem * leftDrawerButton = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(leftDrawerButtonPress:)];
    [self.navigationItem setLeftBarButtonItem:leftDrawerButton animated:YES];
}

-(void)setupRightMenuButton{
    MMDrawerBarButtonItem * rightDrawerButton = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(rightDrawerButtonPress:)];
    [self.navigationItem setRightBarButtonItem:rightDrawerButton animated:YES];
}

#pragma mark - Button Handlers
-(void)leftDrawerButtonPress:(id)sender{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}

-(void)rightDrawerButtonPress:(id)sender{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideRight animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
