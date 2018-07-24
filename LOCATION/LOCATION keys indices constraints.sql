/*********************************************************************************
# Copyright 2014 Observational Health Data Sciences and Informatics
#
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
********************************************************************************/

/************************

 ####### #     # ####### ######      #####  ######  #     #    ######  ####### #     #    ### #     # ######  ####### #     # #######  #####  
 #     # ##   ## #     # #     #    #     # #     # ##   ##    #     # #       #     #     #  ##    # #     # #        #   #  #       #     # 
 #     # # # # # #     # #     #    #       #     # # # # #    #     # #       #     #     #  # #   # #     # #         # #   #       #       
 #     # #  #  # #     # ######     #       #     # #  #  #    #     # #####   #     #     #  #  #  # #     # #####      #    #####    #####  
 #     # #     # #     # #          #       #     # #     #    #     # #        #   #      #  #   # # #     # #         # #   #             # 
 #     # #     # #     # #          #     # #     # #     #    #     # #         # #       #  #    ## #     # #        #   #  #       #     # 
 ####### #     # ####### #           #####  ######  #     #    ######  #######    #       ### #     # ######  ####### #     # #######  ##### 

Dev script to create the required indexes for the recently accepted LOCATION and LOCATION_HISTORY table proposals as described in github issues #91: https://github.com/OHDSI/CommonDataModel/issues/91 and #181 https://github.com/OHDSI/CommonDataModel/issues/181

last revised: 24-July-2018

author:  Clair Blacketer

description:  These indices, primary keys and constraints are considered a minimal requirement to ensure adequate performance of analyses.

*************************/

/*Primary Key*/

ALTER TABLE location ADD CONSTRAINT xpk_location PRIMARY KEY NONCLUSTERED ( location_id ) ;

ALTER TABLE location_history ADD CONSTRAINT fpk_location_history FOREIGN KEY ( location_id ) REFERENCES location ( location_id ) ;
