EVE_appreview
=============

API cruncher for applicants trying to join an EVE Online corp

APIcrunch.pl -id=### -vcode=hashcode
  Takes EVE Online API key and crunches data, printing out a report for the applicant.  Core application in suite.
  Downloads local copies of relevant personal APIs for data crunching.

CORPstanding.pl
  Controls/downloads corp standing list for flagging connections
  
Wallet_crunch.pl
  Follow the money.  Checks donations (and private contracts, TBD).  Also flags against standing list for critical issues
  
Standing_crunch.pl
  Processes standing/mail info.  Flags messages according to corp standing flags.  
  
Skill_crunch.pl
  Builds report of relevant skills.  Custom certificate program.  Also breaks down PVP/Industry/Other SP counts
  
Ship_crunch.pl
  Crunches data against doctrine ships.  Builds report for "can fly" "can fly well"
  
  
Control Files
=============

cert.xml
  XML file of custom certifications.  Completely customizable for various types of corp certs.  
  Default includes both industry and combat certs.

standing.xml
  Standing data from crunched corpAPI data.  Includes tags to be human readable.
  
*.sql
  SQL files from EVE Online to do conversions to/from human readable outputs.
  
Sample Files
============

cert-sample.xml
  Includes comments for formatting.  Basic sample rubric

Lockefox.txt
  Sample output report
  
