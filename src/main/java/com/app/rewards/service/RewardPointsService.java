package com.app.rewards.service;

import java.math.BigDecimal;

import org.springframework.stereotype.Service;


@Service
public class RewardPointsService {

	public int calculateRewardPoints(BigDecimal amount) {
        int points = 0;

        // calculate points based on given condition
        if (amount.compareTo(BigDecimal.valueOf(100)) > 0) {
            points += 2 * (amount.subtract(BigDecimal.valueOf(100))).intValue();
        }

        if (amount.compareTo(BigDecimal.valueOf(50)) > 0) {
            points += (amount.min(BigDecimal.valueOf(100)).subtract(BigDecimal.valueOf(50))).intValue();
        }

        return points;
    }
}
