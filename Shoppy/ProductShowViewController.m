//
//  ProductShowViewController.m
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import "ProductShowViewController.h"
#import "Utility.h"
#import "CartItem.h"
#import "Product.h"
#import "User.h"

@implementation ProductShowViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.productName.text = self.name;
    self.productQuantity.text = [NSString stringWithFormat:@"%@",self.quantity];
    self.productDescription.text = self.desc;
    self.productPrice.text = [NSString stringWithFormat:@"₹ %@",self.price ];
    self.productImage.image = [UIImage imageNamed:[self image]];
    self.selectedQuantity.text = @"1";
    [self.selectedProductFinalPrice setHidden:true];
}

- (IBAction)addToCart:(UIButton *)sender {
    Warehouse *warehouse = [Utility warehouse];
    User *user = [Utility user];
    int i,count = 0 ;
    for(i=0;i<[warehouse productsList].count;i++){
        if([self.name isEqualToString: [[[warehouse productsList] objectAtIndex:i] proName]]){
            break;
        }
    }
    if([user cart].count == 0 )
    {
        CartItem *cartItem = [[CartItem alloc] init];
        cartItem.cartProductname = [[[warehouse productsList] objectAtIndex:i] proName];
        cartItem.cartProductId = [NSNumber numberWithInt:i];
        cartItem.cartProductPrice = [[[warehouse productsList] objectAtIndex:i] price];
        cartItem.selectedQuantityInCart = [NSNumber numberWithInt:[self.selectedQuantity.text intValue]];
        cartItem.cartProductImage = [[[warehouse productsList] objectAtIndex:i] proImage];
        int a = [[[[warehouse productsList] objectAtIndex:i] price] intValue];
        int b = [self.selectedQuantity.text intValue];
        a = a * b;
        a = a + [[user cartValue] intValue];
        user.cartValue = [NSNumber numberWithInt:a];
        NSLog(@"%@",[user cartValue]);
        [[user cart] addObject:cartItem];
        [self.tabBarController setSelectedIndex:1];
        return;
        
    }
        
    for(int j=0;j<[user cart].count;j++){
        if([self.name isEqualToString: [[[user cart] objectAtIndex:j] cartProductname]]){
                NSNumber *quantit = [[[user cart] objectAtIndex:j] selectedQuantityInCart];
                int z = [quantit intValue] + [[NSNumber numberWithInt:[self.selectedQuantity.text intValue]] intValue];
                quantit = [NSNumber numberWithInt:z];
                CartItem *oldObj = [[user cart] objectAtIndex:j];
                int k = [[oldObj cartProductId] intValue];
                Product *pro = [[warehouse productsList] objectAtIndex:k];
                if([quantit intValue] <= [[pro quantity] intValue]){
                    oldObj.selectedQuantityInCart = quantit;
                    int a = [[[[warehouse productsList] objectAtIndex:i] price] intValue];
                    int b = [self.selectedQuantity.text intValue];
                    a = a * b;
                    a = a + [[user cartValue] intValue];
                    user.cartValue = [NSNumber numberWithInt:a];
                    NSLog(@"%@",[user cartValue]);
                    count++;
                    [self.tabBarController setSelectedIndex:1];
                    break;
                } else{
                    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"No Stock" message:@"There is no availability for the selected quantity in our warehouse. Select within the available quantity." preferredStyle:UIAlertControllerStyleAlert]; // 7
                
                    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                        NSLog(@"You pressed button OK");
                    }];
                    [alert addAction:defaultAction];
                    [self presentViewController:alert animated:YES completion:nil];
                    return;
                }
        }
    }
    
    if(count == 0){
        CartItem *cartItem = [[CartItem alloc] init];
        cartItem.cartProductname = [[[warehouse productsList] objectAtIndex:i] proName];
        cartItem.cartProductId = [NSNumber numberWithInt:i];
        cartItem.cartProductPrice = [[[warehouse productsList] objectAtIndex:i] price];
        cartItem.selectedQuantityInCart = [NSNumber numberWithInt:[self.selectedQuantity.text intValue]];
        cartItem.cartProductImage = [[[warehouse productsList] objectAtIndex:i] proImage];
        int a = [[[[warehouse productsList] objectAtIndex:i] price] intValue];
        int b = [self.selectedQuantity.text intValue];
        a = a * b;
        a = a + [[user cartValue] intValue];
        user.cartValue = [NSNumber numberWithInt:a];
        NSLog(@"%@",[user cartValue]);
        [[user cart] addObject:cartItem];
        [self.tabBarController setSelectedIndex:1];
        return;
    }
    
//    NSLog(@"quantity: %@",[[[user cart] objectAtIndex:0] selectedQuantity]);
}

- (IBAction)addSelectedQuantity:(id)sender {
    int i;
    for(i = 1; i <= [self.quantity integerValue]; i++){
        if([[NSString stringWithFormat:@"%d",i] isEqualToString: self.selectedQuantity.text]){
//            NSLog(@"%d",i);
            break;
        }
    }
    i++;
//    NSLog(@"%d",i);
    if([NSNumber numberWithInteger:i]<=self.quantity){
        [self.selectedProductFinalPrice setHidden:false];
        self.selectedQuantity.text = [NSString stringWithFormat:@"%d",i];
        i = i * [self.price intValue];
        self.selectedProductFinalPrice.text = [NSString stringWithFormat:@" Final Price : ₹ %d",i];
    }else{
//        NSLog(@"ELSE");
    }
}

- (IBAction)minusSelectedQuantity:(id)sender {
    int i;
    for(i = 1; i <= [self.quantity integerValue]; i++){
        if([[NSString stringWithFormat:@"%d",i] isEqualToString: self.selectedQuantity.text]){
//            NSLog(@"%d",i);
            break;
        }
    }
    i--;
//    NSLog(@"%d",i);
    if([NSNumber numberWithInteger:i]>=[NSNumber numberWithInteger:1]){
        self.selectedQuantity.text = [NSString stringWithFormat:@"%d",i];
        if(i != 1){
        i = i * [self.price intValue];
            self.selectedProductFinalPrice.text = [NSString stringWithFormat:@" Final Price : ₹ %d",i];
        }else{
            [self.selectedProductFinalPrice setHidden:true];
        }
    }else{
//        NSLog(@"ELSE");
    }

}
@end
