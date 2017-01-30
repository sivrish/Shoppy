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
    self.totalValue.text = [NSString stringWithFormat:@"Total cart value : ₹ %@",[user cartValue]];
    self.walletBalance.text = [NSString stringWithFormat:@"Wallet balance : ₹ %@",[user cashInWallet]];
    return cell;
}

- (IBAction)checkout:(id)sender {
//    User *user = [Utility user];
//    Warehouse *warehouse = [Utility warehouse];
//    int a = [[user cashInWallet] intValue];
//    int b = [[user cartValue] intValue];
//    int i;
//    if(a>b){
//        a = a - b;
//        user.cashInWallet = [NSNumber numberWithInt:a];
//        user.cartValue = [NSNumber numberWithInt:0];
//        for(i=0;i<[user cart].count;i++){
//            CartItem *cartItem = [user cart] objectAtIndex:i];
//            [warehouse productsList][cartItem cartProductId];
//        }
//        [[user cart] removeAllObjects];
//    }
}

@end
