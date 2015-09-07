//
//  DetailViewController.m
//  WeLoveWesteros
//
//  Created by LaTiesha Caston on 9/6/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import "DetailViewController.h"
#import "CustomTableTableViewController.h"
#import "CustomTableViewCell.h"


@interface DetailViewController ()

@end

@implementation DetailViewController

{
    
    NSArray *detailRegionImages;
    
}






- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    self.detailRegionName.text = self.stringRegionName;
    self.detailRegionImage.image = self.justDetailImage;
    
    if ([self.stringRegionName isEqualToString:@"The North"]) {
    
    
    self.textView.text = @"The north is the largest region, nearly as large as the rest of the regions combined. It is sparsely populated, with vast wilderness, forests, pine-covered hills and snowcapped mountains, although it also is home to one of the five Westerosi cities, White Harbor. The northern climate is cold and harsh in the winter, and occasionally it snows even in the summer. ";
    
    
    }
    
    else if ([self.stringRegionName isEqualToString:@"Dorne"])
    {
    
    
       self.textView.text = @"Dorne is the southernmost region of Westeros. It stretches from the southern Red Mountains near the Dornish Marches to the southern coast of the continent. It is the hottest kingdom in Westeros and features the only desert on the continent.";
    
    }
    else if ([self.stringRegionName isEqualToString:@"Beyond The Wall"])
    {
        
        
        self.textView.text = @"The northernmost region of Westeros, stretching from the Wall north to the lands beyond the edge of the known map, known as the Land of Always Winter. For the most part it is covered by the haunted forest and comprised of many lakes and rivers, and shelters strange beasts among the mountains of the Frostfangs. ";
        
    }
    else if ([self.stringRegionName isEqualToString:@"The Iron Islands"])
    {
        
        
        self.textView.text = @"The Iron Islands are a group of islands lying off the western coast of Westeros in Ironman's Bay. There are seven main islands, including Pyke, Great Wyk, Old Wyk, and Harlaw. The soil is infertile, but mines of several types, including iron and lead, exist. The inhabitants of these harsh isles are known as ironmen in the rest of Westeros, and the ironborn among themselves.";
        
    }
    else if ([self.stringRegionName isEqualToString:@"The Riverlands"])
    {
        
        
        self.textView.text = @"The riverlands are the fertile areas between the forks of the Trident. They are the domain of the Tullys of Riverrun. At the time of the Conquest, the riverlands were ruled by House Hoare, the Kings of the Isles and the Rivers.";
        
    }
    else if ([self.stringRegionName isEqualToString:@"The Vale of Arryn"])
    {
        
        
        self.textView.text = @"The Vale lies to the east of the riverlands, surrounded almost completely by the Mountains of the Moon. It consists of vast mountain ranges with the people living in valleys between them, such as the Vale proper, and along the coast. ";
        
    }
    else if ([self.stringRegionName isEqualToString:@"The Westerlands"])
    {
        
        
        self.textView.text = @"The westerlands are the lands to the west of the riverlands and north of the Reach. It is a small region, but is home to some of the richest gold and silver mines on the continent.";
        
    }
    else if ([self.stringRegionName isEqualToString:@"The Crownlands"])
    {
        
        
        self.textView.text = @"The crownlands are lands ruled directly by the Lord of the Seven Kingdoms. These lands include King's Landing and the surrounding areas, including the town of Rosby. ";
        
    }
    else if ([self.stringRegionName isEqualToString:@"The Reach"])
    {
        
        
        self.textView.text = @"The Reach is the largest region except for the north; it encompasses a region of the most fertile part of Westeros and numerous well-populated villages and towns.";
        
    }
    else if ([self.stringRegionName isEqualToString:@"The Stormlands"])
    {
        
        
        self.textView.text = @"The stormlands, located south of King's Landing, stretch down to the Sea of Dorne and are bordered by Shipbreaker Bay in the east and the Reach in the west. It is one of the smaller regions of Westeros, a land of harsh mountains, stony shores, and verdant forests.";
        
    }
    
    

    
    
    
//    static NSString *cellIdentifier = @"Cell";
//    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
//    
//    
//    cell.regionName.text = [regions objectAtIndex:indexPath.row ];
//    cell.regionImage.image = [UIImage imageNamed:[regionImages objectAtIndex:indexPath.row]];
//    
//    
//    
    
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}









/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
