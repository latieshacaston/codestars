//
//  QuizViewController.m
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/22/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "QuizViewController.h"
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>



@implementation QuizViewController







- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
   
    
    
    // rounded corners for the buttons
    
    self.answer1Button.layer.cornerRadius = 5;
    self.answer1Button.clipsToBounds = YES;
    
    self.answer2Button.layer.cornerRadius = 5;
    self.answer2Button.clipsToBounds = YES;
    
    self.answer3Button.layer.cornerRadius = 5;
    self.answer3Button.clipsToBounds = YES;
    
    self.answer4Button.layer.cornerRadius = 5;
    self.answer4Button.clipsToBounds = YES;
    
    self.nextQuestion.layer.cornerRadius = 5;
    self.nextQuestion.clipsToBounds = YES;
    
    self.done.layer.cornerRadius = 5;
    self.done.clipsToBounds = YES;
    
    
    
    if (gameInProgress == NO) {
    
        scoreNumber = 0;
        gameInProgress = YES;
    
    
    }
    
    self.result.hidden = YES;
 //   self.nextQuestion.hidden = YES;
 
    self.score.text = [NSString stringWithFormat:@"%i", scoreNumber];

    
    
    answer1Correct = NO;
    answer2Correct = NO;
    answer3Correct = NO;
    answer4Correct = NO;
    
    // Take the integer called questionSelected and set it to a random value from 0 - 4. 5 possible options. Used to select which question will be picked.
    
    questionSelected = arc4random() % 5;
    
    NSLog (@"%d", questionSelected);
    
    
    [self loadQuestions];
    

    
    
    
    
}


- (void) showNextQuestion {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    

    
    
    
}

- (IBAction)nextQuestionPressed:(id)sender {
    
    
    
    
    [self showNextQuestion];
    
    
    
    
}

- (IBAction)donePressed:(id)sender {
    
    
    scoreNumber = 0;
    
    
}



- (void) rightAnswer {
    
    scoreNumber = scoreNumber + 1;
    self.score.text = [NSString stringWithFormat:@"%i", scoreNumber];

    
    [self performSegueWithIdentifier:@"rightAnswer" sender:self];
    
    
    
    
    
    
}

- (void) wrongAnswer {
    

    
    [self performSegueWithIdentifier:@"wrongAnswer" sender:self];
    
//    self.result.image = [UIImage imageNamed: @"wrong_answer.png"];
  //  [self showNextQuestion];
    
    
    
    
    
    
    
    
}

-(void)viewDidDisappear:(BOOL)animated {


    [self loadQuestions];
}


-(void) loadQuestions {
    
    
    
    switch (questionSelected) {
            
        case 0:
            
            self.questionLabel.text = [NSString stringWithFormat:@"Let's go get some BBQ and _____"];
            
            [self.answer1Button setTitle: @"Drink orange soda" forState: UIControlStateNormal];
            [self.answer2Button setTitle: @"Get Busy" forState: UIControlStateNormal];
            [self.answer3Button setTitle: @"Laugh at vegetarians" forState: UIControlStateNormal];
            [self.answer4Button setTitle: @"Dance the night away" forState: UIControlStateNormal];
            
            answer2Correct = YES;
            
            NSLog (@"%d, %@, %d", questionSelected, self.questionLabel.text, answer2Correct );
            break;
          
            
        case 1:
            
            self.questionLabel.text = [NSString stringWithFormat:@"Jean Claude Van Dam I'm _____"];
            
            [self.answer1Button setTitle: @"Gorgeous" forState: UIControlStateNormal];
            [self.answer2Button setTitle: @"Quite Handsome" forState: UIControlStateNormal];
            [self.answer3Button setTitle: @"Fine" forState: UIControlStateNormal];
            [self.answer4Button setTitle: @"Pretentious" forState: UIControlStateNormal];
            
            answer3Correct = YES;
            
            NSLog (@"%d, %@, @%d", questionSelected, self.questionLabel.text, answer3Correct );
            
            
            break;
            
        case 2:
            
            self.questionLabel.text = [NSString stringWithFormat:@"Girl hurry up and write your _____ down before I dont want it no more"];
            
            [self.answer1Button setTitle: @"Number" forState: UIControlStateNormal];
            [self.answer2Button setTitle: @"Address" forState: UIControlStateNormal];
            [self.answer3Button setTitle: @"Favorite Spice Girl" forState: UIControlStateNormal];
            [self.answer4Button setTitle: @"Social Security Number" forState: UIControlStateNormal];
            
            answer1Correct = YES;
            NSLog (@"%d, %@, @%d", questionSelected, self.questionLabel.text, answer1Correct );
            
            break;
            
            
        case 3:
            
            self.questionLabel.text = [NSString stringWithFormat:@"Mind ya _____, just mind ya _____!"];
            
            [self.answer1Button setTitle: @"Bidness" forState: UIControlStateNormal];
            [self.answer2Button setTitle: @"Manners" forState: UIControlStateNormal];
            [self.answer3Button setTitle: @"Privilege" forState: UIControlStateNormal];
            [self.answer4Button setTitle: @"Momma" forState: UIControlStateNormal];
            
            answer1Correct = YES;
        
            NSLog (@"%d, %@, @%d", questionSelected, self.questionLabel.text, answer1Correct );
            break;
          
            
        case 4:
            
            self.questionLabel.text = [NSString stringWithFormat:@"Mama ____________!!!"];
            
            [self.answer1Button setTitle: @"WHYYYYYYY" forState: UIControlStateNormal];
            [self.answer2Button setTitle: @"AYEEEE LMAOOOO" forState: UIControlStateNormal];
            [self.answer3Button setTitle: @"YAAAAASSSSS" forState: UIControlStateNormal];
            [self.answer4Button setTitle: @"NOOOOOO" forState: UIControlStateNormal];
            
            answer4Correct = YES;
            
            
            NSLog (@"%d, %@, @%d", questionSelected, self.questionLabel.text, answer4Correct );
            break;
      
            
            
        default:
            break;
            
            
    }
    
    
    
    
    
}



//
//- (void) rightAnswer {
//    
//    scoreNumber = scoreNumber + 1;
//    self.score.text = [NSString stringWithFormat:@"%i", scoreNumber];
//    
//    
//    [self performSegueWithIdentifier:@"rightAnswer" sender:self];
//    
//    
//}
//
//- (void) wrongAnswer {
//    
//    [self performSegueWithIdentifier:@"wrongAnswer" sender:self];
//    
//    
//}






- (IBAction)answer1Pressed:(id)sender {
    
    if (answer1Correct == YES) {
    
        [self rightAnswer];
    
    } else {
    
        [self wrongAnswer];
    
    
    }
    
    
    
}


- (IBAction)answer2Pressed:(id)sender {
    
    if (answer2Correct == YES) {
        
        [self rightAnswer];
        
    } else {
        
        [self wrongAnswer];
        
        
    }
    
}

- (IBAction)answer3Pressed:(id)sender {
    
    if (answer3Correct == YES) {
        
        [self rightAnswer];
        
    } else {
        
        [self wrongAnswer];
        
        
    }
    
}


- (IBAction)answer4Pressed:(id)sender {
    
    if (answer4Correct == YES) {
        
        [self rightAnswer];
        
    } else {
        
        [self wrongAnswer];
        
        
    }
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}




























// VIDEO PLAYER

// -(IBAction)playMovie:(id)sender {
//
//     NSBundle *bundle = [NSBundle mainBundle];
//     NSString *moviePath = [bundle pathForResource:@"FP_Damn" ofType:@"mp4"];
////     CGFloat width = self.videoPlayer.width;
////     CGFloat height = self.videoPlayer.height / 3.0;
//     AVPlayer *player = [AVPlayer playerWithURL:[NSURL fileURLWithPath:moviePath]];
//     AVPlayerLayer *playerLayer = [AVPlayerLayer layer];
//     playerLayer.player = player;
//    // playerLayer.frame = CGRectMake(.0, height, width, height);
//     playerLayer.backgroundColor = [UIColor blackColor].CGColor;
//     playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
//     
//     [self.videoPlayer addSubview:player];
//     
//     [player play]; }

//                                                     
//-(IBAction)playMovie:(id)sender {
//    
//    
//    
//    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"FP_Damn" withExtension:@"mp4"];
//    
//    AVAsset *asset = [AVAsset assetWithURL:videoURL];
//    AVPlayerItem *playerItem = [[AVPlayerItem alloc] initWithAsset:asset];
//    AVPlayer *avPlayer = [AVPlayer playerWithPlayerItem:playerItem];
//    AVPlayerLayer *avPlayerLayer = [AVPlayerLayer playerLayerWithPlayer:avPlayer];
//    
//    avPlayerLayer.frame = CGRectMake(10, 10, 300, 300);
//    [self.videoPlayer.layer addSublayer:avPlayerLayer];
//    [avPlayer play];
//    
//    
//    
//   
//                                                     
//                                                     
//}






//
//-(IBAction)playMovie:(id)sender {
//
//
//
//    AVPlayer *videoPlayer;
//    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"FP_Damn" withExtension:@"mp4"];
//    
//
//
//    videoPlayer = [[AVPlayer alloc] initWithURL:videoURL];
//    
//    [videoPlayer play];
//
//
//}
//










/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/




@end
                  

