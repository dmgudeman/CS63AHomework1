//
//  Card.m
//  CS63AHomework1
//
//  Created by David Gudeman on 4/12/15.
//  Copyright (c) 2015 David Gudeman. All rights reserved.
//

#import "Card.h"

@interface Card()


@end

@implementation Card

-(int)match:(NSArray *)otherCards {
  int score = 0;
  
  for (Card *card in otherCards) {
    if ([card.contents isEqualToString:self.contents]){
     
      score = 1;
    }
  }
  return score;
}




@end
