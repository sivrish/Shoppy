//
//  CartViewController.m
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import "CartViewController.h"
#import "CartTableViewCell.h"
#import "Utility.h"
#import "User.h"
#import "CartItem.h"

@implementation CartViewController

-(void) viewDidLoad{
    [super viewDidLoad];
}

-(void) viewWillAppear:(BOOL)animated{
    [[self tableView] reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    User *user = [Utility user];
    return [user cart].count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cartCell";
    CartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    User *user = [Utility user];
    cell.productName.text = [[[user cart] objectAtIndex:indexPath.row] cartProductname];
    cell.selectedQuantity.text = [NSString stringWithFormat:@"Selected Quantity %@",[[[user cart] objectAtIndex:indexPath.row] selectedQuantityInCart] ];
    cell.productImage.image = [UIImage imageNamed:[[[user cart] objectAtIndex:indexPath.row] cartProductImage]];
    int i = [[[[user cart] objectAtIndex:indexPath.row] selectedQuantityInCart] intValue];
    i = i * [[[[user cart] objectAtIndex:indexPath.row] cartProductPrice] intValue];
    cell.productFinalPrice.text = [NSString stringWithFormat:@"₹ %d",i];
    return cell;
}

@end
