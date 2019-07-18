//
//  ViewController.h
//  app5
//
//  Created by mac on 31/08/18.
//  Copyright © 2018 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    bool numberPress;
    bool add,sub,mul,div;
    bool decimal;
    NSString *firstEntry;
    NSString *secondEntry;
}
@property (strong, nonatomic) IBOutlet UILabel *ShowNum;
- (IBAction)pressClear:(id)sender;
- (IBAction)pressEqual:(id)sender;
- (IBAction)pressDivide:(id)sender;
- (IBAction)pressSubtract:(id)sender;
- (IBAction)pressMultiply:(id)sender;
- (IBAction)pressAdd:(id)sender;
- (IBAction)pressNumber:(UIButton *)sender;
- (IBAction)dot:(id)sender;

@end

