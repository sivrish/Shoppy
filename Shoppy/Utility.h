//
//  Utility.h
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//
#import "User.h"
#import "Warehouse.h"

@interface  Utility : NSObject
+(void) load;
+(User *) user;
+(Warehouse *) warehouse;
@end
