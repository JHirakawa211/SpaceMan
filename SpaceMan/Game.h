//
//  Game.h
//  SpaceMan
//
//  Created by John Hirakawa on 7/6/15.
//  Copyright (c) 2015 John Hirakawa. All rights reserved.
//

#import <UIKit/UIKit.h>

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
    
    
}

-(IBAction)StartGame:(id)sender;

@end
