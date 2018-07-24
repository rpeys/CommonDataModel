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

 ####### #     # ####### ######      #####  ######  #     #    ######  ####### #     # 
 #     # ##   ## #     # #     #    #     # #     # ##   ##    #     # #       #     # 
 #     # # # # # #     # #     #    #       #     # # # # #    #     # #       #     # 
 #     # #  #  # #     # ######     #       #     # #  #  #    #     # #####   #     # 
 #     # #     # #     # #          #       #     # #     #    #     # #        #   #  
 #     # #     # #     # #          #     # #     # #     #    #     # #         # #   
 ####### #     # ####### #           #####  ######  #     #    ######  #######    #    
                                                                                       


Dev script to update the LOCATION table and create the LOCATION_HISTORY as described in github issues #91: https://github.com/OHDSI/CommonDataModel/issues/91 and #181 https://github.com/OHDSI/CommonDataModel/issues/181

last revised: 24-July-2017

author:  Clair Blacketer, Gowtham Rao

*************************/

CREATE TABLE location
(
  location_id					  INTEGER			NOT NULL ,
  address_1						  VARCHAR(50)		NULL ,
  address_2						  VARCHAR(50)		NULL ,
  city							  VARCHAR(50)		NULL ,
  state							  VARCHAR(2)		NULL ,
  zip							  VARCHAR(9)		NULL ,
  county						  VARCHAR(20)		NULL ,
  country						  VARCHAR(100)		NULL ,
  location_source_value 		  VARCHAR(50)		NULL ,
  latitude						  FLOAT				NULL ,
  longitude						  FLOAT				NULL 
)
;

CREATE TABLE location_history
(
  location_id			INTEGER			NOT NULL ,
  relationship_type		VARCHAR(50)		NULL ,
  domain_id				VARCHAR(50)		NOT NULL ,
  entity_id				INTEGER			NOT NULL ,
  start_date			DATE			NOT NULL ,
  end_date				DATE			NULL
)
;