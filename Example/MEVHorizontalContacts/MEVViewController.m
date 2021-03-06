//
//  MEVViewController.m
//  MEVHorizontalContacts
//
//  Created by Manuel Escrig Ventura on 04/29/2016.
//  Copyright (c) 2016 Manuel Escrig Ventura. All rights reserved.
//

#import "MEVViewController.h"

// Examples
#import "MEVHorizontalContactsExample1.h"
#import "MEVHorizontalContactsExample2.h"
#import "MEVHorizontalContactsExample3.h"
#import "MEVHorizontalContactsExample4.h"

static NSString *CellIdentifier = @"CellIdentifier";

@interface MEVViewController ()

@end

@implementation MEVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"MEVHorizontalContacts";
    
    [self.tableView setBackgroundColor:[UIColor whiteColor]];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    [self.tableView setEstimatedRowHeight:100];
    [self.tableView setRowHeight:UITableViewAutomaticDimension];
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];

}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            return 100;
            break;
        case 1:
            return 120;
            break;
        case 2:
            return 140;
            break;
        case 3:
            return 95;
            break;
        default:
            return 100;
            break;
    }
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewAutomaticDimension;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    [cell setBackgroundColor:[UIColor colorWithRed:236/255.0f green:236/255.0f blue:236/255.0f alpha:1]];

    switch (indexPath.row) {
        case 0: {
            MEVHorizontalContactsExample1 *horizontalContactsView = [MEVHorizontalContactsExample1 new];
            [cell addSubview:horizontalContactsView];
            [cell addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[horizontalContactsView]|" options:NSLayoutFormatAlignAllCenterX metrics:nil views:@{@"horizontalContactsView" : horizontalContactsView}]];
            [cell addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[horizontalContactsView]|" options:NSLayoutFormatAlignAllCenterY metrics:nil views:@{@"horizontalContactsView" : horizontalContactsView}]];
        } break;
        case 1: {
            MEVHorizontalContactsExample2 *horizontalContactsView = [MEVHorizontalContactsExample2 new];
            [cell addSubview:horizontalContactsView];
            [cell addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[horizontalContactsView]|" options:NSLayoutFormatAlignAllCenterX metrics:nil views:@{@"horizontalContactsView" : horizontalContactsView}]];
            [cell addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[horizontalContactsView]|" options:NSLayoutFormatAlignAllCenterY metrics:nil views:@{@"horizontalContactsView" : horizontalContactsView}]];
        } break;
        case 2: {
            MEVHorizontalContactsExample3 *horizontalContactsView = [MEVHorizontalContactsExample3 new];
            [cell addSubview:horizontalContactsView];
            [cell addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[horizontalContactsView]|" options:NSLayoutFormatAlignAllCenterX metrics:nil views:@{@"horizontalContactsView" : horizontalContactsView}]];
            [cell addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[horizontalContactsView]|" options:NSLayoutFormatAlignAllCenterY metrics:nil views:@{@"horizontalContactsView" : horizontalContactsView}]];
        } break;
        case 3: {
            MEVHorizontalContactsExample4 *horizontalContactsView = [MEVHorizontalContactsExample4 new];
            [cell addSubview:horizontalContactsView];
            [cell addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[horizontalContactsView]|" options:NSLayoutFormatAlignAllCenterX metrics:nil views:@{@"horizontalContactsView" : horizontalContactsView}]];
            [cell addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[horizontalContactsView]|" options:NSLayoutFormatAlignAllCenterY metrics:nil views:@{@"horizontalContactsView" : horizontalContactsView}]];
        } break;
        default:
            break;
    }
    
    return cell;
}


@end
