SELECT round(cp.right_vote/(cp.right_vote + cp.left_vote),4) * 100 as Right_Twix_Percentage
,round(cp.left_vote/(cp.right_vote + cp.left_vote),4) * 100 as Left_Twix_Percentage
  FROM candy_poll cp;
