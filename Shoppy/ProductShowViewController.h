//
//  ProductShowViewController.h
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductShowViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *productImage;
@property (weak, nonatomic) IBOutlet UILabel *productName;
@property (weak, nonatomic) IBOutlet UILabel *productDescription;
@property (weak, nonatomic) IBOutlet UILabel *productPrice;
@property (weak, nonatomic) IBOutlet UILabel *productQuantity;
@property (weak, nonatomic) NSString *image;
@property (weak, nonatomic) NSString *name;
@property (weak, nonatomic) NSString *desc;
@property (weak, nonatomic) NSString *price;
@property (weak, nonatomic) NSString *quantity;


- (IBAction)addToCart:(UIButton *)sender;

@end
