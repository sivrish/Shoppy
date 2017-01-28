//
//  ProductShowViewController.m
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import "ProductShowViewController.h"

@implementation ProductShowViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.productName.text = self.name;
    self.productQuantity.text = self.quantity;
    self.productDescription.text = self.desc;
    self.productPrice.text = self.price;
    self.productImage.image = [UIImage imageNamed:[self image]];
}

- (IBAction)addToCart:(UIButton *)sender {
}
-(void)setPrice:(NSString *)price
{

    NSLog(@"price %@",price);
    _price = price;
}
@end
