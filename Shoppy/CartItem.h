//
//  Cart.h
//  Shoppy
//
//  Created by Sivrish Thangamani on 29/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CartItem : NSObject

@property NSNumber *cartProductId;
@property NSString *cartProductname;
@property NSNumber *selectedQuantityInCart;
@property NSNumber *cartProductPrice;
@property NSString *cartProductImage;

@end
