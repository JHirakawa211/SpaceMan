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
int RandomRightDiagAsteroidPosition;
int RandomLeftDiagAsteroidPosition;
int RandomleftDiagDownAsteroidPosition;
int RandomRightDiagDownAsteroidPosition;
int ScoreNumber;
NSInteger HighScoreNumber;


@interface Game : UIViewController
{
    CGPoint startPoint;
    IBOutlet UIButton *StartGame;
    IBOutlet UIButton *Exit;
    IBOutlet UILabel *ScoreLabel;
    IBOutlet UIImageView *SpaceMan;
    IBOutlet UIImageView *RightRedAsteroid;
    IBOutlet UIImageView *RightGreenAsteroid;
    IBOutlet UIImageView *RightDiagBlueAsteroid;
    IBOutlet UIImageView *RightDiagMostOrangeAsteroid;
    IBOutlet UIImageView *TopRedAsteroid;
    IBOutlet UIImageView *TopYellowAsteroid;
    IBOutlet UIImageView *LeftDiagMostGreenAsteroid;
    IBOutlet UIImageView *LeftDiagPurpleAsteroid;
    IBOutlet UIImageView *LeftPinkAsteroid;
    IBOutlet UIImageView *LeftDarkBlueAsteroid;
    IBOutlet UIImageView *LeftDiagDownMostYellowAsteroid;
    IBOutlet UIImageView *LeftDiagDownMostOrangeAsteroid;
    IBOutlet UIImageView *BottomBlueAsteroid;
    IBOutlet UIImageView *BottomPurpleAsteroid;
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
    NSTimer *AsteroidRightDiagOrangeMovement;
    NSTimer *AsteroidRightDiagBlueMovement;
    NSTimer *AsteroidLeftDiagGreenMovement;
    NSTimer *AsteroidLeftDiagPurpleMovement;
    NSTimer *ScoreTimer;
    //NSTimer *AsteroidLeftDiagDownYellowMovement;
    //NSTimer *AsteroidLeftDiagDownOrangeMovement;
    //NSTimer *AsteroidRightDiagDownDarkBlueMovement;
    //NSTimer *AsteroidRightDiagDownPinkMovement;
    
    
    
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
-(void)PlaceAsteroidRightDiagOrange;
-(void)PlaceAsteroidRightDiagBlue;
-(void)PlaceAsteroidLeftDiagGreen;
-(void)PlaceAsteroidLeftDiagPurple;
/*-(void)PlaceAsteroidLeftDiagDownYellow;
-(void)PlaceAsteroidRightDiagDownDarkBlue;*/


-(void)AsteroidMovingLeftRed;
-(void)AsteroidMovingLeftGreen;
-(void)AsteroidMovingRightPink;
-(void)AsteroidMovingRightDarkBlue;
-(void)AsteroidMovingTopRed;
-(void)AsteroidMovingTopYellow;
-(void)AsteroidMovingBottomBlue;
-(void)AsteroidMovingBottomPurple;
-(void)AsteroidMovingRightDiagOrange;
-(void)AsteroidMovingRightDiagBlue;
-(void)AsteroidMovingLeftDiagGreen;
-(void)AsteroidMovingLeftDiagPurple;
/*-(void)AsteroidMovingLeftDiagDownYellow;
-(void)AsteroidMovingRightDiagDownDarkBlue;*/

-(void)GameOver;
-(void)Score;



@end
