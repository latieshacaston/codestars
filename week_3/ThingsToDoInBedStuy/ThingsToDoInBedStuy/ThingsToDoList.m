//
//  ThingsToDoList.m
//  ThingsToDoInBedStuy
//
//  Created by LaTiesha Caston on 8/21/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import "ThingsToDoList.h"

@implementation ThingsToDoList



- (instancetype)init
{
    self = [super init];
    if (self) {
        _thingsToDo = [[NSArray alloc] initWithObjects: @"Eat at Bed Stuy Do or Dine", @"Swim in the Kosciuszko Pool", @"Chill out at Bed Vyne Wine", @"Watch the sunset in Herbert Von King Park", @"Buy organic, local veggies at Bed Stuy Fresh and Local", @"Get some delicious southern food at Bed Stuy Fish Fry", @"Find your center at Sacred Brooklyn", @"Shop used and vintage at The Lions Den", @"Cool off at Brooklyn Swirl", @"Visit my apartment and say hello to my cat",  nil];
    }
    return self;
}



- (NSString *)returnARandomThingToDo {


    int random = arc4random_uniform((int)self.thingsToDo.count);
    
    return self.thingsToDo[random];
    




}













@end
