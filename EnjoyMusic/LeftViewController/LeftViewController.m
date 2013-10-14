//
//  LeftViewController.m
//  EnjoyMusic
//
//  Created by 王鹏 on 13-9-16.
//  Copyright (c) 2013年 王鹏. All rights reserved.
//

#import "LeftViewController.h"
#import "Header.h"
#import "UIViewController+MMDrawerController.h"
@interface LeftViewController ()

@end

@implementation LeftViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
     // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    if (indexPath.row == 0) {
        cell.textLabel.text = @"Home";
    }

    if (indexPath.row == 1) {
        cell.textLabel.text = @"Songlist";
    }
    if (indexPath.row == 2) {
        cell.textLabel.text = @"Hotlist";
    }
    if (indexPath.row == 3) {
        cell.textLabel.text = @"Singer";
    }


    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        HomeViewController * homeCenterVC = [[HomeViewController alloc] init];
        
        UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:homeCenterVC];
        
        
        [self.mm_drawerController
         setCenterViewController:nav
         withFullCloseAnimation:YES
         completion:nil];
        
        [homeCenterVC release];
        [nav release];
        
    }

    if (indexPath.row == 1) {
        SongListViewController * songCenterVC = [[ SongListViewController alloc] init];
        
        UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:songCenterVC];
        
        
        [self.mm_drawerController
         setCenterViewController:nav
         withFullCloseAnimation:YES
         completion:nil];
        
        [songCenterVC release];
        [nav release];

    }
    if (indexPath.row == 2) {
        HotListViewController * hotCenterVC = [[HotListViewController alloc] init];
        
        UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:hotCenterVC];
        
        
        [self.mm_drawerController
         setCenterViewController:nav
         withFullCloseAnimation:YES
         completion:nil];
        
        [hotCenterVC release];
        [nav release];
        
    }

    if (indexPath.row == 3) {
        SingerViewController * singerCenterVC = [[SingerViewController alloc] init];
        
        UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:singerCenterVC];
        
        
        [self.mm_drawerController
         setCenterViewController:nav
         withFullCloseAnimation:YES
         completion:nil];
        
        [singerCenterVC release];
        [nav release];
        
    }

}

@end
