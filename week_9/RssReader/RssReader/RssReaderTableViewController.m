//
//  RssReaderTableViewController.m
//  RssReader
//
//  Created by LaTiesha Caston on 10/7/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "RssReaderTableViewController.h"
#import "RssItem.h"

@interface RssReaderTableViewController ()

@end

@implementation RssReaderTableViewController {

    NSXMLParser *rssParser;
    NSMutableArray *rssItems;
    
    NSMutableString *title, *link, *description, *pubDate;
    NSString *currentElement;
    RssItem *currentRssItem;



}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    rssItems = [[NSMutableArray alloc] init];
    NSURL *url = [NSURL URLWithString:@"http://images.apple.com/main/rss/hotnews/hotnews.rss"];
    rssParser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    
    [rssParser setDelegate:self];
    [rssParser parse];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return rssItems.count;
}

- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {


    currentElement = elementName;
    
    if([currentElement isEqualToString:@"item"]) {
    
        RssItem *rssItem = [[RssItem alloc]init];
        currentRssItem = rssItem;
        
        title = [[NSMutableString alloc] init];
        link = [[NSMutableString alloc] init];
        description = [[NSMutableString alloc] init];
        pubDate = [[NSMutableString alloc] init];
    
    
    }


}



- (void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {



    if ([currentElement isEqualToString:@"title"]) {
    
    
        RssItem *rssItem = [[RssItem alloc]init];
        currentRssItem = rssItem;
        
        title = [[NSMutableString alloc] init];
        link = [[NSMutableString alloc] init];
        description = [[NSMutableString alloc] init];
        pubDate = [[NSMutableString alloc] init];
    
    
    }




}


- (void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {


    if ([elementName isEqualToString:@"item"]) {
    
        currentRssItem.title = [title stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
        currentRssItem.link = [link stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
        currentRssItem.contentDescription = [description stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
        currentRssItem.pubDate = [pubDate stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
        
        [rssItems addObject:currentRssItem];
    }



}
                   
                   
                   
                   
                   

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    RssItem *item = [rssItems objectAtIndex:indexPath.row];
    cell.textLabel.text = item.title;
    cell.detailTextLabel.text = item.pubDate;
    
    return cell;
}

- (void)parserDidEndDocument:(NSXMLParser *)parser {

    [self.tableView reloadData];



}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/




// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"showWebPage"]) {
    
    
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        RssItem *item = [rssItems objectAtIndex:indexPath.row];
        [[segue destinationViewController]setLink:item.link]; 
    
    
    }
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
