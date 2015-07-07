//
//  Game.h
//  SpaceMan
//
//  Created by John Hirakawa on 7/6/15.
//  Copyright (c) 2015 John Hirakawa. All rights reserved.
//

#import <UIKit/UIKit.h>

int RandomRightAsteroidPosition;
int RandomLeftAsteroidPosition;
int RandomTopAsteroidPosition;
int RandomBottomAsteroidPosition;

@interface Game : UIViewController
{
    IBOutlet UIButton *StartGame;
    IBOutlet UIImageView *SpaceMan;
    IBOutlet UIImageView *RightRedAsteroid;
    IBOutlet UIImageView *RightGreenAsteroid;
    IBOutlet UIImageView *RightDiagBlueAsteroid;
    IBOutlet UIImageView *RightDiagYellowAsteroid;
    IBOutlet UIImageView *RightDiagMostPinkAsteroid;
    IBOutlet UIImageView *RightDiagMostOrangeAsteroid;
    IBOutlet UIImageView *TopRedAsteroid;
    IBOutlet UIImageView *TopYellowAsteroid;
    IBOutlet UIImageView *LeftDiagMostGreenAsteroid;
    IBOutlet UIImageView *LeftDiagMostBlueAsteroid;
    IBOutlet UIImageView *LeftDiagPurpleAsteroid;
    IBOutlet UIImageView *LeftDiagDarkBlueAsteroid;
    IBOutlet UIImageView *LeftPinkAsteroid;
    IBOutlet UIImageView *LeftDarkBlueAsteroid;
    IBOutlet UIImageView *LeftDiagDownPurpleAsteroid;
    IBOutlet UIImageView *LeftDiagDownRedAsteroid;
    IBOutlet UIImageView *LeftDiagDownMostYellowAsteroid;
    IBOutlet UIImageView *LeftDiagDownMostOrangeAsteroid;
    IBOutlet UIImageView *BottomBlueAsteroid;
    IBOutlet UIImageView *BottomPurpleAsteroid;
    IBOutlet UIImageView *RightDiagDownMostOrangeAsteroid;
    IBOutlet UIImageView *RightDiagDownMostGreenAsteroid;
    IBOutlet UIImageView *RightDiagDownDarkBlueAsteroid;
    IBOutlet UIImageView *RightDiagDownPinkAsteroid;
    
    NSTimer *AsteroidLeftRedMovement;
    NSTimer *AsteroidLeftGreenMovement;
    NSTimer *AsteroidBlueMovement;
    NSTimer *AsteroidRightPinkMovement;
    NSTimer *AsteroidRightDarkBlueMovement;
    NSTimer *AsteroidTopRedMovement;
    NSTimer *AsteroidTopYellowMovement;
    NSTimer *AsteroidBottomBlueMovement;
    NSTimer *AsteroidBottomPurpleMovement;
    NSTimer *AsteroidOrangeMovement;
    NSTimer *AsteroidPurpleMovement;
    NSTimer *AsteroidYellowMovement;
    
    
}

-(IBAction)StartGame:(id)sender;
-(void)PlaceAsteroidLeftRed;
-(void)PlaceAsteroidLeftGreen;
-(void)PlaceAsteroidRightPink;
-(void)PlaceAsteroidRightDarkBlue;
-(void)PlaceAsteroidTopRed;
-(void)PlaceAsteroidTopYellow;
-(void)PlaceAsteroidBottomBlue;
-(void)PlaceAsteroidBottomPurple;
-(void)AsteroidMovingLeftRed;
-(void)AsteroidMovingLeftGreen;
-(void)AsteroidMovingRightPink;
-(void)AsteroidMovingRightDarkBlue;
-(void)AsteroidMovingTopRed;
-(void)AsteroidMovingTopYellow;
-(void)AsteroidMovingBottomBlue;
-(void)AsteroidMovingBottomPurple;



@end
