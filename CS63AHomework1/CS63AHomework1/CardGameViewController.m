//
//  CardGameViewController.m
//  CS63AHomework1
//
//  Created by David Gudeman on 4/12/15.
//  Copyright (c) 2015 David Gudeman. All rights reserved.
//

#import "CardGameViewController.h"

#import "PlayingCard.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController (){
  PlayingCardDeck *playingCardDeck;
}



@property (strong, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@end

@implementation CardGameViewController

- (void)viewDidLoad{
  [super viewDidLoad];
  playingCardDeck = [[PlayingCardDeck alloc] init];
  
  
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
  NSLog(@"flipCount = %d ", self.flipCount);
  
  
}

//
- (IBAction)touchCardButtom:(UIButton *)sender {
  
  if ([sender.currentTitle length]){
  
    [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                    forState:UIControlStateNormal];
  
    [sender setTitle:@"" forState:UIControlStateNormal];
  } else {
    PlayingCard *card = (PlayingCard*)playingCardDeck.drawRandomCard;
    
   // [Deck randomCard:newCard];
  
    
    [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                      forState:UIControlStateNormal];
    NSString* title = [NSString stringWithFormat:@"%lu %@",(unsigned long)card.rank, card.suit];
    [sender setTitle:title forState:UIControlStateNormal];

  }
  //calls the getter and setter
  //increments and then calls both
  self.flipCount++;

}

@end
