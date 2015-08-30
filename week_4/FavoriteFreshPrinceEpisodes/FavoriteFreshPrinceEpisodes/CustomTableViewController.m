//
//  CustomTableViewController.m
//  FavoriteFreshPrinceEpisodes
//
//  Created by LaTiesha Caston on 8/29/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"

@interface CustomTableViewController ()


@end

@implementation CustomTableViewController



{
    
    NSArray *episodeNames;
    NSArray *episodeAirInfo;
    NSArray *episodeImages;
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    

    episodeNames = @[@"Pilot",
                     @"Mistaken Identity",
                     @"Will Goes A-Courtin",
                     @"Papa's Got A Brand New Excuse",
                     @"Knowledge is Power",
                     @"The Mother of All Battles ",
                     @"Granny Gets Busy",
                     @"Blood is Thicker Than Mud",
                     @"Did the Earth Move for You?",
                     @"Def Poets Society" ];
    
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
  episodeImages = @[@"001.png",@"002.png",@"003.png",@"004.png",@"005.png",@"006.png",@"007.png",@"008.png",@"009.png",@"010.png" ];




}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [episodeNames count];
    
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *cellIdentifier = @"Cell";
    
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier ];
    
    cell.episodeNameLabel.text = [episodeNames objectAtIndex:indexPath.row];
    cell.episodeInfoLabel.text = [episodeAirInfo objectAtIndex:indexPath.row];
    cell.thumbnailImage.image = [UIImage imageNamed:[episodeImages objectAtIndex:indexPath.row]];
    

    cell.imageView.image = [UIImage imageNamed:@"creme_brelee"];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {


}



@end
