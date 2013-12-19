//
//  GBDiariosTableViewController.m
//  NewsApp
//
//  Created by Gerardo Blanco García on 18/12/13.
//  Copyright (c) 2013 Gerardo Blanco García. All rights reserved.
//

#import "GBDiariosTableViewController.h"

static const NSUInteger GBNumberOfSections = 1;

@interface GBDiariosTableViewController ()

@property (nonatomic, strong) NSArray *diarios;

@end

@implementation GBDiariosTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.diarios = @[@"El País", @"El Mundo", @"ABC"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return GBNumberOfSections;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.diarios count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell) {
        cell.textLabel.text = [self.diarios objectAtIndex:indexPath.row];
    }
    
    return cell;
}

@end
