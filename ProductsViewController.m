//
//  ProductsViewController.m
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import "ProductsViewController.h"
#import "ProductsTableViewCell.h"
#import "Product.h"
#import "ProductShowViewController.h"

@implementation ProductsViewController


-(void) viewDidLoad{
    [super viewDidLoad];
    _productsList = [[NSMutableArray alloc] init];
    Product *product = [[Product alloc] initWithProductName:@"MacBook Pro 2016" AndProductQuantity:[NSNumber numberWithInteger:10] AndProductdescription:@"This is a new product from the Apple Inc which is formerly called as Apple Computers" AndProductImage:@"macbook.jpg" AndProductPrice:[NSDecimalNumber decimalNumberWithString:@"100000"]];
    [_productsList addObject:product];
    product = [[Product alloc] initWithProductName:@"GTX 1080" AndProductQuantity:[NSNumber numberWithInteger:10] AndProductdescription:@"This is a new product from Nvidia which is the powerful GPU in the market right now" AndProductImage:@"GTX.jpg" AndProductPrice:[NSDecimalNumber decimalNumberWithString:@"60000"]];
    [_productsList addObject:product];
    product = [[Product alloc] initWithProductName:@"Corsair 570X" AndProductQuantity:[NSNumber numberWithInteger:10] AndProductdescription:@"This is a new product from Corsair which has the new 4 side tempered glass body and featuring 3 RGB fans" AndProductImage:@"corsair.jpg" AndProductPrice:[NSDecimalNumber decimalNumberWithString:@"15000"]];
    [_productsList addObject:product];
    product = [[Product alloc] initWithProductName:@"Asus Strix x99" AndProductQuantity:[NSNumber numberWithInteger:10] AndProductdescription:@"This is a new product from Asus which supports Intel chips with x99 chipsets" AndProductImage:@"strix.jpg" AndProductPrice:[NSDecimalNumber decimalNumberWithString:@"40000"]];
    [_productsList addObject:product];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _productsList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  static NSString *cellIdentifier = @"productsCell";
    ProductsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    Product *product = [_productsList objectAtIndex:indexPath.row];
    cell.productName.text = [product name];
    cell.productPrice.text = [NSString stringWithFormat:@"₹ %@",[product price]];
    cell.productDescription.text = [product desc];
    cell.productImage.image = [UIImage imageNamed:[product image]];
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"productShow"]) {
        NSIndexPath *indexPath = [_productsTableView indexPathForSelectedRow];
        Product *product = [_productsList objectAtIndex:indexPath.row];
        ProductShowViewController *destViewController = segue.destinationViewController;
        destViewController.name = [product name];
        destViewController.image = [product image];
        NSString *s =[NSString stringWithFormat:@"₹%@",[product price]];
        destViewController.price =s;
        destViewController.desc = [product desc];
        destViewController.quantity = [NSString stringWithFormat:@"%@",[product quantity]];

    }
}
@end
