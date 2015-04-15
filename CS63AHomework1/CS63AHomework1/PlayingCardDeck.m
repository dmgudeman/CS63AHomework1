//
//  PlayingCardDeck.m
//  CS63AHomework1
//
//  Created by David Gudeman on 4/12/15.
//  Copyright (c) 2015 David Gudeman. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init{
  
  self = [super init];
  
  //nested loop to build a playing card deck
  if (self)
  {
    // loops through the four suits
    for (NSString *suit in [PlayingCard validSuits])
    {
      // loops through all the ranks
      for (NSUInteger rank =1; rank <= [PlayingCard maxRank]; rank++)
      {
        PlayingCard *card = [[PlayingCard alloc] init];
        card.rank = rank;
        card.suit = suit;
        [self addCard:card];
      }
    }
  }
  return self;
}


@end
