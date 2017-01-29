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
@property (weak, nonatomic) IBOutlet UITextField *quantityGetter;
@property (weak, nonatomic) IBOutlet UILabel *productQuantity;
@property (weak, nonatomic) IBOutlet UILabel *selectedQuantity;
@property (strong, nonatomic) NSString *image;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *desc;
@property (strong, nonatomic) NSNumber *price;
@property (strong, nonatomic) NSNumber *quantity;
@property (weak, nonatomic) IBOutlet UILabel *selectedProductFinalPrice;
- (IBAction)addSelectedQuantity:(id)sender;
- (IBAction)minusSelectedQuantity:(id)sender;
@end
