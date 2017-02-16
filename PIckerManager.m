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


- (void)initWithData:(NSArray *)data andBlock:(PickerManagerBlock)block {
	pickerData = data;
	_picker.delegate = self;
	_picker.dataSource = self;
	self.pickerManagerBlock = block;
	
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

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
   
	itemSelected= pickerData[row];
	_pickerManagerBlock(itemSelected,NO);
}


+ (instancetype)loadPicker{
	if(sSharedInstance == nil){
		sSharedInstance = [[[NSBundle mainBundle] loadNibNamed:@"PickerXIB" owner:self options:nil]lastObject];
	}
	return sSharedInstance;
}


-(IBAction)hideButton{
	_pickerManagerBlock(itemSelected,YES);
}





@end
