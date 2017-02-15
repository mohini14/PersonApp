//
//  PIckerManager.m
//  PersonApp
//
//  Created by Mohini Sindhu  on 15/02/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import "PIckerManager.h"
static PIckerManager *sSharedInstance;

@implementation PIckerManager{
	NSArray *pickerData;
}

-(void)dataInitialiser{
	pickerData =[NSArray arrayWithObjects:@"mohini",@"sindhu",@"shilpa",@"chavi", nil];
	
}

-(void)initWithData:(NSArray *)data{

	pickerData = data;
	_picker.delegate = self;
	_picker.dataSource = self;

}
-(NSInteger )numberOfComponentsInPickerView:(UIPickerView *)pickerView{
	return 1;
	
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
	return pickerData.count;
	
}
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
	
	return [pickerData objectAtIndex:row];
	
}

+ (instancetype)loadPicker{
	if(sSharedInstance == nil){
		sSharedInstance = [[[NSBundle mainBundle] loadNibNamed:@"PickerXIB" owner:self options:nil]lastObject];
	}
	return sSharedInstance;
}



//-(void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
//	

	
	
	
	
	
//	//Here, like the table view you can get the each section of each row if you've multiple sections
//	NSLog(@"Selected Color: %@. Index of selected color: %i", [pickerData objectAtIndex:row], row);
//	
// //Now, if you want to navigate then;
// // Say, OtherViewController is the controller, where you want to navigate:
////	OtherViewController *objOtherViewController = [OtherViewController new];
////	[self.navigationController pushViewController:objOtherViewController animated:YES];
//	
//}



@end
