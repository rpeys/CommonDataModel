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
                                                                                       


Dev script to create the COST table as described in github issue #137: https://github.com/OHDSI/CommonDataModel/issues/137

last revised: 6-July-2017

author:  Clair Blacketer, Colin Orr

*************************/
CREATE TABLE survey
(
  survey_occurrence_id					  INTEGER			NOT NULL ,
  person_id						          INTEGER			NOT NULL ,
  survey_concept_id			  			  INTEGER			NOT NULL ,
  survey_start_date				     	  DATE			  	NULL ,
  survey_start_datetime				  	  DATETIME2			NULL ,
  survey_end_date						  DATE				NOT NULL ,
  survey_end_datetime					  DATETIME2			NULL ,					  
  provider_id							  INTEGER			NULL ,
  assisted_concept_id	  				  INTEGER			NULL ,
  respondent_type_concept_id			  INTEGER			NULL ,
  timing_concept_id						  INTEGER			NULL ,
  collection_method_concept_id			  INTEGER			NULL ,
  assisted_source_value		  			  VARCHAR(50)		NULL ,
  respondent_type_source_value			  VARCHAR(100)		NULL ,
  timing_source_value					  VARCHAR(100)		NULL ,
  collection_method_source_value		  VARCHAR(100)		NULL ,
  survey_source_value					  VARCHAR(100)		NULL ,
  survey_source_concept_id				  INTEGER			NULL ,
  survey_source_identifier				  VARCHAR(100)		NULL ,
  validated_survey_concept_id			  INTEGER			NULL ,
  validated_survey_source_value			  VARCHAR(100)		NULL ,
  survey_version_number					  VARCHAR(20)		NULL , 
  visit_occurrence_id					  INTEGER			NULL ,
  response_to_visit_occurrence_id		  INTEGER			NULL  
)
;

CREATE TABLE observation
(
  observation_id					INTEGER			NOT NULL ,
  person_id						    INTEGER			NOT NULL ,
  observation_concept_id			INTEGER			NOT NULL ,
  observation_date				    DATE			NOT NULL ,
  observation_datetime				DATETIME2		NULL ,
  observation_type_concept_id	    INTEGER			NOT NULL ,
  value_as_number				    FLOAT			NULL ,
  value_as_string				    VARCHAR(60)	    NULL ,
  value_as_concept_id			    INTEGER			NULL ,
  qualifier_concept_id			    INTEGER			NULL ,
  unit_concept_id				    INTEGER			NULL ,
  provider_id					    INTEGER			NULL ,
  visit_occurrence_id			    INTEGER			NULL ,
  visit_detail_id               	INTEGER         NULL ,
  observation_source_value		  	VARCHAR(50)	    NULL ,
  observation_source_concept_id		INTEGER			NULL ,
  unit_source_value				    VARCHAR(50)	    NULL ,
  qualifier_source_value			VARCHAR(50)	    NULL ,
  domain_occurrence_id				INTEGER			NULL , /* This will link back to the SURVEY table on SURVEY_OCCURRENCE_ID */
  domain_id							VARCHAR(20)		NULL , /* This should be 'Survey' */
  value_as_datetime					DATETIME2		NULL   
)
;