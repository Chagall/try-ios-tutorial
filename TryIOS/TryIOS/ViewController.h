//
//  ViewController.h
//  TryIOS
//
//  Created by Fabio Pereira on 26/09/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) UIButton *fiftyPercentButton;
@property (weak, nonatomic) UIButton *hundredPercentButton;

- (void) buttonPressed:(UIButton *)sender;
@end

