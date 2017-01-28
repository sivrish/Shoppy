//
//  Product.m
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@implementation Product

-(id) initWithProductName:(NSString *)name AndProductQuantity:(NSNumber *)quantity AndProductdescription:(NSString *)desc AndProductImage:(NSString *)image AndProductPrice:(NSDecimalNumber *)price{
    
    self = [super init];
    if(self){
        self.name = name;
        self.desc = desc;
        self.quantity = quantity;
        self.image = image;
        self.price = price;
    }
    return self;
}

@end