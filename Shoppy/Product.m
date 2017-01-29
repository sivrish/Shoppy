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

-(id) initWithProductName:(NSString *)proName AndProductQuantity:(NSNumber *)quantity AndProductdescription:(NSString *)desc AndProductImage:(NSString *)image AndProductPrice:(NSNumber *)price{
    
    self = [super init];
    if(self){
        self.proName = proName;
        self.desc = desc;
        self.quantity = quantity;
        self.proImage = image;
        self.price = price;
    }
    return self;
}

@end
