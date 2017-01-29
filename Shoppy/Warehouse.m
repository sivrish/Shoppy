//
//  Warehouse.m
//  Shoppy
//
//  Created by Sivrish Thangamani on 29/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import "Warehouse.h"

@implementation Warehouse
-(id) init{
    self = [super init];
    if(self){
        self.productsList = [[NSMutableArray alloc] init];
    }
    return self;
}
@end
