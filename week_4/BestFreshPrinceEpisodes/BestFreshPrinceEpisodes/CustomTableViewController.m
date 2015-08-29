//
//  CustomTableViewController.m
//  BestFreshPrinceEpisodes
//
//  Created by new on 8/27/15.
//  Copyright (c) 2015 new. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"

@implementation CustomTableViewController


// My 10 Favorite Fresh Prince Episodes: 1. The First One 2. The One Where Carlton Learns About Racial Profiling 3. The Pool Party 4. How Come He Dont Want Me Man? 5. The Dinner Where Will was bribing hilary because she dropped out of college 6. Mind Ya Bidness 7. The Episode with carlton in the dress 8. The Frat Party where Carlton drops knowledge 9. Will in the closet with tisha Campbell 10. Raphael De La Ghetto


{
    
    NSArray *episodeNames;
    NSArray *episodeAirInfo;
    NSArray *episodeDescriptions;
    NSArray *episodeImages;
    
    
}


- (void) viewDidLoad {


    [super viewDidLoad];
    
    
    episodeNames = @[@"01. Pilot",
                     @"02. Mistaken Identity",
                     @"03. Will Goes A-Courtin",
                     @"04. Papa's Got A Brand New Excuse",
                     @"05. Knowledge is Power",
                     @"06. The Mother of All Battles ",
                     @"07. Granny Gets Busy",
                     @"08. Blood is Thicker Than Mud",
                     @"09. Did the Earth Move for You?",
                     @"10. Def Poets Society" ];
    
    episodeAirInfo = @[@"Season 01 | Episode 01 | September 10, 1990",
                       @"Season 01 | Episode 06 | October 15, 1990",
                       @"Season 04 | Episode 06 | October 18, 1993",
                       @"Season 04 | Episode 24 | May 9, 1994",
                       @"Season 01 | Episode 13 | November 26, 1990",
                       @"Season 02 | Episode 02 | September 16, 1991",
                       @"Season 02 | Episode 05 | October 7, 1991",
                       @"Season 04 | Episode 08 | November 1, 1993",
                       @"Season 02 | Episode 01 | September 09, 1991",
                       @"Season 01 | Episode 07 | October 22, 1990" ];
    
    
    episodeDescriptions = @[@"The beginning of a beautiful friendship.",
                            @"The episode where Carlton has his first experience with racial profiling still makes me a litte emotional",
                            @"The 3-4 seconds of Carlton twirling in and out of the scene in his striped bathing outfit is a thing of beauty",
                            @"The scene that can bring even the toughest of us to tears. 'How come he don't want me man?' ",
                            @"Will Smith is the scum of the earth. However Will Smith is the pinnacle of manliness - Hilary Banks",
                            @"Mind ya bidness thats all, just mind ya bidness!",
                            @"Will and Carlton make a dress and Carlton rocks it better than any model would",
                            @"The president of a frat rejects Carlton and calls him a sellout for being rich. Carlton responds in the best way possible. 'Being black isnt what Im trying to be, its what I am' ",
                            @"Will and his girlfriend (Tisha Campbell) are stuck in the attic after an earthquake. Will finds out that his girlfriends hair and nails are fake and sings a song I now love to sing around my apartment. ",
                            @"I saved the best for last. This episode could really be summed up in one phrase: 'Lets go get some BBQ and get busy" ];
    
    episodeImages = @[@""];
    


}

- (NSInteger) tableView: (UITableView *)tableView numberOfRowsInSection:(NSInteger)section {


    return 10;



}




- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {


    return CGRectGetHeight(self.view.bounds);



}



- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {





    static NSString *cellIdentifier = @"Cell";
    
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.episodeName.text = [episodeNames objectAtIndex:indexPath.row];
    cell.airDateInfo.text = [episodeAirInfo objectAtIndex:indexPath.row];
    
    cell.episodeDescription.text = [episodeDescriptions objectAtIndex:indexPath.row];
    
    
    
    return cell;
}




@end
