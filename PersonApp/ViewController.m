//
//  ViewController.m
//  PersonApp
//
//  Created by Mohini Sindhu  on 15/02/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
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

-(IBAction)showXIB:(id)sender{
	
	PersonXIBView *xib = [PersonXIBView loadNIB];
	[xib showView:self.view];
}

-(IBAction)hideXIB:(id)sender{

	PersonXIBView *xib = [PersonXIBView loadNIB];
	[xib hideView];
}
-(IBAction)prepareForUnwind:(UIStoryboardSegue*)segue{
	
}

@end
