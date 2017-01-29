//
//  CartTableViewCell.h
//  Shoppy
//
//  Created by Sivrish Thangamani on 29/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MDTableViewCell.h"

@interface CartTableViewCell : MDTableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *productImage;
@property (weak, nonatomic) IBOutlet UILabel *productName;
@property (weak, nonatomic) IBOutlet UILabel *selectedQuantity;
@property (weak, nonatomic) IBOutlet UILabel *productFinalPrice;


@end
