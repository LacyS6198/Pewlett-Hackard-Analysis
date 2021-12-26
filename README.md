# Overview
## Project Overview
Pewlett-Hackard has numerous employees that are reaching the retirement age, many of whom are in Senior or Management level roles. The amount of expected retirements will have a significant impact on business operations. In order to reduce the impact, Pewlett-Hackard is analyzing the employees reaching retirement age to better understand the following:

- Expected number of retirees
- Expected retirees per department/role
- Number of potential mentors

By understanding the nmber of expected retirees per department, the company can better prepare by training staff, hiring, and potentially rolling out a mentorship program. The mentorship program would encourage people to work part-time instead of fully retire and become a mentor for those employees that will eventually be filling the more senior/management-level roles.

## Technology Used

- PGAdmin
- CSV (for importing and exporting data)

## Database structure
![EmployeeDB](https://user-images.githubusercontent.com/93630042/147411892-d1bcf68a-f1a0-4ac5-8932-cb9cc5614e49.png)


# Results
Four key results were identified as part of the analysis. 

1. The analysis shows that a total of 90,398 employees are within the retirement age based on the criteria use (birth date between 1952-01-01 and 1955-12-31)
2. The most impacted roles were Senior Engineers (33%) and Senior Staff (31%). These two roles acccount for 64% of the employee poplation expected to be nearing retirement. See **Table 1** for details.
3. In addition to Senior personnel, the number of total Engineers within the retirement age is concerning. There are 29,414 Senior Engineers and 14,222 Engineers within the retirement range. While the greatest number is Senior Engineers, the company will need to ensure it has enough Engineers overall to continue business operations.
4. There are primarily Senior Staff eligible for the mentorship program, followed by Engineers and Senior Engineers. Given the number of Senior Staff and Senior Engineers expected to retire, it will be important that these employees are engaged in the mentorship program to help train replacements for the retirees. 

#### Table 1
|Count|% of Total|Title|
| :---: | :---: | :---: |
|29414|	33%|Senior Engineer|
|28254|	31%|Senior Staff|
|14222|	16%|Engineer|
|12243|	14%|Staff|
|4502|	5%|Technique Leader|
|1761|	2%|Assistant Engineer|
|2|	0%|Manager|

# Summary
As the "silver tsunami" begins to take effect, the company will need to fill 90,398 roles. While the company has a plan for a mentorship program, it does not have enough mentorship-eligible employees to support the number of roles that will need to be filled. For example, there are 29,414 Senior Engineers yet only 169 Senior Engineers eligible for the mentorship program. The company will either need to reassess the criteria for the mentorship program, identify an additional strategy, or begin backfilling from Senior outside-hires vs internally. 

In addition to the current analysis that was completed, the company should further refine its review by determining the estimated time-until-retirement for all of those within the retirement range. By estimating the time-until-retirement, the company can create an estimated timeframe for retirements - including the number and title of those retiring within xxx year. This should help the company plan backfilling and upwards training to reduce impact. If there is a timeframe with a large number of expected retirements, the company may also be able to offer incentives for people to stay longer while they work to fill the positions. 

Finally, the company should review the criteria for the mentorship program to determine if the criteria should be expanded to allow for more mentors. The company could create several tables based on varying birth dates (example:  1965, 1966, 1967) and compare the results of all three tables to determine an ideal birth date criteria for the program. Currently, when limited to only employees born in 1965, there are not enough mentors to support the expected retirement population of critical roles (Senior Staff, Senior Engineers, Engineers). By expanding the program's eligibility they may be able to better offset the number of retirees to the number of mentors. 
