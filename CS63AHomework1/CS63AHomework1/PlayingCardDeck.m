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

- (instancetype)init
{
  self = [super init];
  
  if (self)
  {
    for (NSString *suit in [PlayingCard validSuits])
    {
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
