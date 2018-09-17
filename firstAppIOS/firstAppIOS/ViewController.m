//
//  ViewController.m
//  firstAppIOS
//
//  Created by Kaughlin Caver on 9/15/18.
//  Copyright © 2018 Kaughlin Caver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *loginNotify;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //create required memory for an NS string
    self.username = @"bob";
    self.password = @"password";
    
    //allows for user input to be hidden
    self.passwordTextField.secureTextEntry = TRUE;
    
    NSLog(@"%@", self.username);
    
}
- (IBAction)onClickLogin:(id)sender {
    //called whenever login button is clicked
    if([self.username isEqualToString: [self.usernameTextField text]] && [self.password isEqualToString: [self.passwordTextField text]]){
        NSLog(@"succes");
        [self.loginNotify setText:@"Login succesfull"];
    }
    else{
        NSLog(@"Failure");
        [self.loginNotify setText:@"Login Failed"];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    // method works whenever someones finger touches the screen
    [self.view endEditing:TRUE];
}


@end
