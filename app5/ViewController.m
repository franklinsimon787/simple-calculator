//
//  ViewController.m
//  app5
//
//  Created by mac on 31/08/18.
//  Copyright © 2018 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    numberPress = FALSE;
    decimal = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)pressClear:(id)sender
{
    numberPress = FALSE;
    decimal = FALSE;
    _ShowNum.text = NULL;
    firstEntry = NULL;
    secondEntry =NULL;
}

- (IBAction)pressEqual:(id)sender
{
    if(add == true)
    {
        NSInteger outputNum = [firstEntry intValue] + [secondEntry intValue];
        _ShowNum.text = [NSString stringWithFormat:@"%ld",outputNum];
    }
    else if (sub == true)
    {
        NSInteger outputNum = [firstEntry intValue] - [secondEntry intValue];
        _ShowNum.text = [NSString stringWithFormat:@"%ld",outputNum];
    }
    else if (mul == true)
    {
        NSInteger outputNum = [firstEntry intValue] * [secondEntry intValue];
        _ShowNum.text = [NSString stringWithFormat:@"%ld",outputNum];
    }
    else if (div == true)
    {
        NSUInteger outputNum = [firstEntry intValue] / [secondEntry intValue];
        _ShowNum.text = [NSString stringWithFormat:@"%ld",outputNum];
    }
}

- (IBAction)pressDivide:(id)sender
{
    div = true;
    add = false;
    sub = false;
    mul = false;
    numberPress = true;
}

- (IBAction)pressSubtract:(id)sender
{
    sub = true;
    div = false;
    add = false;
    mul = false;
    numberPress = true;
}

- (IBAction)pressMultiply:(id)sender
{
    mul = true;
    add = false;
    sub = false;
    div = false;
    numberPress = true;
}

- (IBAction)pressAdd:(id)sender
{
    add = true;
    sub = false;
    mul = false;
    div = false;
    numberPress= true;
}

- (IBAction)pressNumber:(UIButton *)sender
{
    NSInteger tag = sender.tag;
    if(numberPress == FALSE)
    {
        if(firstEntry == FALSE)
        {
            firstEntry = [NSString stringWithFormat:@"%ld",tag];
            _ShowNum.text = firstEntry;
        }
        else
        {
            firstEntry = [NSString stringWithFormat:@"%@%ld",firstEntry,tag];
            _ShowNum.text = firstEntry;
        }
    }
    else
    {
        if(secondEntry == NULL)
        {
            secondEntry = [NSString stringWithFormat:@"%ld",tag];
            _ShowNum.text = secondEntry;
        }
        else
        {
            secondEntry = [NSString stringWithFormat:@"%@%ld",secondEntry,tag];
            _ShowNum.text = secondEntry;
        }
    }
}

- (IBAction)dot:(id)sender
{
    decimal = true;
    NSRange range = [_ShowNum.text rangeOfString:@"."];
    if(range.location == NSNotFound)
    {
        _ShowNum.text = [_ShowNum.text stringByAppendingString:@"."];
        //NSLog;
        
    }
    numberPress = true;
}
@end
