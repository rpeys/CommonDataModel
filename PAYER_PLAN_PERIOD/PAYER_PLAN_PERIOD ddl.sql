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
                                                                                       


Dev script to update the PAYER_PLAN_PERIOD table as described in github issue #107: https://github.com/OHDSI/CommonDataModel/issues/107

last revised: 24-July-2017

author:  Clair Blacketer, Gowtham Rao

*************************/


CREATE TABLE payer_plan_period
(
  payer_plan_period_id			INTEGER			    NOT NULL ,
  person_id						INTEGER			    NOT NULL ,
  contract_person_id			INTEGER				NULL ,
  payer_plan_period_start_date  DATE			    NOT NULL ,
  payer_plan_period_end_date	DATE			    NOT NULL ,
  payer_concept_id              INTEGER       		NULL ,
  payer_source_value			VARCHAR(50)	  		NULL ,
  payer_source_concept_id       INTEGER       		NULL ,
  plan_concept_id               INTEGER       		NULL ,
  plan_source_value				VARCHAR(50)	  		NULL ,
  plan_source_concept_id        INTEGER       		NULL ,
  contract_concept_id			INTEGER				NULL ,
  contract_source_value			VARCHAR(50)			NULL ,
  contract_source_concept_id	INTEGER				NULL ,
  sponsor_concept_id            INTEGER       		NULL ,
  sponsor_source_value          VARCHAR(50)   		NULL ,
  sponsor_source_concept_id     INTEGER       		NULL ,
  family_source_value			VARCHAR(50)	  		NULL ,
  stop_reason_concept_id        INTEGER       		NULL ,
  stop_reason_source_value      VARCHAR(50)      	NULL ,
  stop_reason_source_concept_id INTEGER       		NULL
)
;