//
//  ViewController.m
//  TryIOS
//
//  Created by Fabio Pereira on 26/09/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.fiftyPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.fiftyPercentButton.frame = CGRectMake(100, 100, 100, 44);
    self.fiftyPercentButton.backgroundColor = [UIColor whiteColor];
    [self.fiftyPercentButton setTitle:@"50%" forState:UIControlStateNormal];
    [self.fiftyPercentButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.fiftyPercentButton];
    
    self.hundredPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.hundredPercentButton.frame = CGRectMake(100, 300, 100, 44);
    self.hundredPercentButton.backgroundColor = [UIColor whiteColor];
    [self.hundredPercentButton setTitle:@"100%" forState:UIControlStateNormal];
    [self.view addSubview:self.hundredPercentButton];
    [self.hundredPercentButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
    label.backgroundColor = [UIColor clearColor];
    label.text = @"Hello, welcome to my app";
    [self.view addSubview:label];
    
}

- (void)loadView {
    CGRect viewRectangle = [[UIScreen mainScreen] bounds];
    UIView *colorView = [[UIView alloc] initWithFrame:viewRectangle];
    self.view = colorView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //if(self.view.backgroundColor == [UIColor yellowColor]){
    //    self.view.backgroundColor = [UIColor redColor];
    //}
    //else if(self.view.backgroundColor == [UIColor redColor]){
    //    self.view.backgroundColor = [UIColor yellowColor];
    //}
}

- (void)buttonPressed:(UIButton *)sender{
    NSLog(@"Button pressed, sender %@", sender);
    
    if([sender isEqual:self.fiftyPercentButton]){
        self.view.alpha = 0.5;
    }
    else if([sender isEqual:self.hundredPercentButton]){
        self.view.alpha = 1.0;
    }
    else{
        NSLog(@"Button action not defined");
    }
}

@end
