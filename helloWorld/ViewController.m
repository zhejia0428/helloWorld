//
//  ViewController.m
//  helloWorld
//
//  Created by Zhe Jia on 9/26/14.
//  Copyright (c) 2014 Zhe Jia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (assign, nonatomic) int currentCount;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)buttonClick:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSNumber *number2 = [NSNumber numberWithInt:2];
    NSNumber *number3 = [NSNumber numberWithInt:3];
    NSArray *array = @[number2, number3];
    array = [NSArray arrayWithObjects:number2, number3, nil];

    NSString *string = [NSString stringWithFormat:@"number:%d \nobject:%@", 1, array];
    NSLog(@"Hello world");
    NSLog(string);
    self.view.backgroundColor = [UIColor blueColor];
    self.currentCount = 0;
    
    self.textLabel.text = string;
    [self.button setTitle:@"press me" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClick:(id)sender
{
    self.currentCount++;
    NSString *labelString = [NSString stringWithFormat:@"currentCount: %d", self.currentCount];
    self.textLabel.text = labelString;
}
@end
