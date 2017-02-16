//
//  ViewController.h
//  PersonApp
//
//  Created by Mohini Sindhu  on 15/02/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonXIBView.h"

@interface ViewController : UIViewController


-(IBAction)showXIB:(id)sender;
-(IBAction)hideXIB:(id)sender;
-(IBAction)prepareForUnwind:(UIStoryboardSegue*)segue;
@end

