//
//  Game.m
//  SpaceMan
//
//  Created by John Hirakawa on 7/6/15.
//  Copyright (c) 2015 John Hirakawa. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(IBAction)StartGame:(id)sender{
    
}

- (void)viewDidLoad {
    RightRedAsteroid.hidden = YES;
    RightGreenAsteroid.hidden = YES;
    RightDiagBlueAsteroid.hidden = YES;
    RightDiagYellowAsteroid.hidden = YES;
    RightDiagMostPinkAsteroid.hidden = YES;
    RightDiagMostOrangeAsteroid.hidden = YES;
    TopRedAsteroid.hidden = YES;
    TopYellowAsteroid.hidden = YES;
    LeftDiagMostGreenAsteroid.hidden = YES;
    LeftDiagMostBlueAsteroid.hidden = YES;
    LeftDiagPurpleAsteroid.hidden = YES;
    LeftDiagDarkBlueAsteroid.hidden = YES;
    LeftPinkAsteroid.hidden = YES;
    LeftDarkBlueAsteroid.hidden = YES;
    LeftDiagDownPurpleAsteroid.hidden = YES;
    LeftDiagDownRedAsteroid.hidden = YES;
    LeftDiagDownMostYellowAsteroid.hidden = YES;
    LeftDiagDownMostOrangeAsteroid.hidden = YES;
    BottomBlueAsteroid.hidden = YES;
    BottomPurpleAsteroid.hidden = YES;
    RightDiagDownMostOrangeAsteroid.hidden = YES;
    RightDiagDownMostGreenAsteroid.hidden = YES;
    RightDiagDownDarkBlueAsteroid.hidden = YES;
    RightDiagDownPinkAsteroid.hidden = YES;
    
    
    
    
    
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
