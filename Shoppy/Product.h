//
//  Product.h
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

@interface  Product : NSObject

@property (strong) NSString *proName;
@property (strong) NSNumber *quantity;
@property (strong) NSString *desc;
@property (strong) NSString *proImage;
@property (strong) NSNumber *price;
- (id) initWithProductName: (NSString *) proName AndProductQuantity: (NSNumber *) quantity AndProductdescription: (NSString *) desc AndProductImage: (NSString *) image AndProductPrice: (NSNumber *) price;

@end
