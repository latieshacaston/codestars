//
//  QuizTableViewController.m
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/19/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import "QuizTableViewController.h"

@interface QuizTableViewController ()

@end

@implementation QuizTableViewController


NSString *correctAnswer;




- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    int r = arc4random_uniform(4);
    
    switch (r) {
    
        default: break;
            
            case 0:
            
            self.quizQuestion.text = @"This is question 1 and button 2 is the right answer";
            
             [self.answer1 setTitle: @"Button1" forState: UIControlStateNormal ];
             [self.answer2 setTitle: @"Button2" forState: UIControlStateNormal ];
             [self.answer3 setTitle: @"Button3" forState: UIControlStateNormal ];
             [self.answer4 setTitle: @"Button4" forState: UIControlStateNormal ];
            
            
            correctAnswer = @"2";
            
            
            
            break;
            
        case 1:
            
            self.quizQuestion.text = @"This is question 2 and button 4 is the right answer";
            
            [self.answer1 setTitle: @"Button1" forState: UIControlStateNormal ];
            [self.answer2 setTitle: @"Button2" forState: UIControlStateNormal ];
            [self.answer3 setTitle: @"Button3" forState: UIControlStateNormal ];
            [self.answer4 setTitle: @"Button4" forState: UIControlStateNormal ];
            
            
            correctAnswer = @"4";
            
            
            
            break;
            
        case 2:
            
            self.quizQuestion.text = @"This is question 3 and button 1 is the right answer";
            
            [self.answer1 setTitle: @"Button1" forState: UIControlStateNormal ];
            [self.answer2 setTitle: @"Button2" forState: UIControlStateNormal ];
            [self.answer3 setTitle: @"Button3" forState: UIControlStateNormal ];
            [self.answer4 setTitle: @"Button4" forState: UIControlStateNormal ];
            
            
            correctAnswer = @"1";
            
            
            
            
            break;
            
        case 3:
            
            self.quizQuestion.text = @"This is question 4 and button 3 is the right answer";
            
            [self.answer1 setTitle: @"Button1" forState: UIControlStateNormal ];
            [self.answer2 setTitle: @"Button2" forState: UIControlStateNormal ];
            [self.answer3 setTitle: @"Button3" forState: UIControlStateNormal ];
            [self.answer4 setTitle: @"Button4" forState: UIControlStateNormal ];
            
            
            correctAnswer = @"3";
            
            
            
            
            break;
            
        case 4:
            self.quizQuestion.text = @"This is question 5 and button 1 is the right answer";
            
            [self.answer1 setTitle: @"Button1" forState: UIControlStateNormal ];
            [self.answer2 setTitle: @"Button2" forState: UIControlStateNormal ];
            [self.answer3 setTitle: @"Button3" forState: UIControlStateNormal ];
            [self.answer4 setTitle: @"Button4" forState: UIControlStateNormal ];
            
            
            correctAnswer = @"1";
            
            
            
            
            
            break;
            
            
    
    
    }
    
    
    
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
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 1;
}




- (IBAction)answer1Pressed:(id)sender {


if ([correctAnswer isEqualToString: @"1"])
{

//bring up the modal segue
    NSLog(@"You Are Correct!");



}
else {
    
    NSLog(@"You Are Wrong!");
    
}



}


- (IBAction)answer2Pressed:(id)sender {

    
    if ([correctAnswer isEqualToString: @"2"])
    {
        
        //bring up the modal segue
        NSLog(@"You Are Correct!");
        
        
        
    }

    else {
    
     NSLog(@"You Are Wrong!");
    
    }


}

- (IBAction)answer3Pressed:(id)sender {


    if ([correctAnswer isEqualToString: @"3"])
    {
        
        //bring up the modal segue
        NSLog(@"You Are Correct!");
        
        
        
    }
    else {
        
        NSLog(@"You Are Wrong!");
        
    }






}


- (IBAction)answer4Pressed:(id)sender {


    if ([correctAnswer isEqualToString: @"4"])
    {
        
        //bring up the modal segue
        NSLog(@"You Are Correct!");
        
        
        
    }

    else {
        
        NSLog(@"You Are Wrong!");
        
    }



}






/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
