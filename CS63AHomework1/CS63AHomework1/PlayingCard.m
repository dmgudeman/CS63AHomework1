//
//  PlayingCard.m
//  CS63AHomework1
//
//  Created by David Gudeman on 4/12/15.
//  Copyright (c) 2015 David Gudeman. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents{
  NSArray *rankStrings = [PlayingCard rankStrings];
  return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

//because both getter and setter are overriden
@synthesize suit = _suit;

+ (NSArray *)validSuits {
  return @[@"♥️",@"♦️",@"♠️",@"♣️"];
}
          
          
- (void)setSuit:(NSString *)suit {
  if ([[PlayingCard validSuits] containsObject:suit]){
    _suit = suit;
  }
}
          
- (NSString *)suit{
  return _suit ? _suit : @"?";

}
          
+ (NSArray *)rankStrings {
  return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"A",@"6",@"8",
           @"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank { return [[self rankStrings] count]-1; }

- (void)setRank:(NSUInteger)rank {
  if (rank <= [PlayingCard maxRank]) {
    _rank = rank;
  }
}
@end