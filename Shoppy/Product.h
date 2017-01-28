//
//  Product.h
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

@interface  Product : NSObject

@property NSString *name;
@property NSNumber *quantity;
@property NSString *desc;
@property NSString *image;
@property NSDecimalNumber *price;
- (id) initWithProductName: (NSString *) name AndProductQuantity: (NSNumber *) quantity AndProductdescription: (NSString *) desc AndProductImage: (NSString *) image AndProductPrice: (NSDecimalNumber *) price;

@end