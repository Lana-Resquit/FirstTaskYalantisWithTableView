//
//  ViewController.m
//  TestForYalantis
//
//  Created by Kristy on 11.08.15.
//  Copyright (c) 2015 Kristyna. All rights reserved.
//

#import "ViewController.h"
#import "FlowersDataController.h"
#import "FlowersTableViewCell.h"

@interface ViewController ()

@property (nonatomic, strong) FlowersDataController *flowersDataController;

@end

@implementation ViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.flowersDataController = [[FlowersDataController alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.flowersDataController flowersCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FlowersTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    Flowers *flower = [self.flowersDataController flowerAtIndex:indexPath.row];
    cell.flowerImageView.image = flower.flowerImage;
    cell.flowerSummaryLabel.text = flower.flowerLabel;
    return cell;
}


@end
