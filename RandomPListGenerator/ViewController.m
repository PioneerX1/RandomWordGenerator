//
//  ViewController.m
//  RandomPListGenerator
//
//  Created by Mick Sexton on 3/29/18.
//  Copyright © 2018 Mick Sexton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)RandomPListButton:(id)sender {
    
    NSString *fileContents = [[NSBundle mainBundle] pathForResource:@"Lists" ofType:@"plist"];
    NSDictionary *wordDic = [[NSDictionary alloc] initWithContentsOfFile:fileContents ];
    NSMutableArray *words = [wordDic valueForKey:@"WordList"];
    int randomGen = arc4random() % [words count];
    NSString *word = [words objectAtIndex:randomGen];
    self.Label.text = word;
}
@end
