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

Dev script to create the required indexes for the recently accepted COST table proposal as described in github issue #81: https://github.com/OHDSI/CommonDataModel/issues/81#issuecomment-333811290

last revised: 7-July-2018

author:  Clair Blacketer

description:  These indices and primary keys and indices are considered a minimal requirement to ensure adequate performance of analyses.

*************************/

/*Primary Key*/

ALTER TABLE survey ADD CONSTRAINT xpk_survey PRIMARY KEY NONCLUSTERED ( survey_occurrence_id ) ;

/*Indices and Constraints*/

CREATE CLUSTERED INDEX idx_survey_person_id ON survey (person_id ASC);


ALTER TABLE survey ADD CONSTRAINT fpk_survey_person FOREIGN KEY (person_id)  REFERENCES person (person_id);

ALTER TABLE survey ADD CONSTRAINT fpk_survey_concept FOREIGN KEY (survey_concept_id)  REFERENCES concept (concept_id);

ALTER TABLE survey ADD CONSTRAINT fpk_survey_provider FOREIGN KEY (provider_id) REFERENCES provider (provider_id);

ALTER TABLE survey ADD CONSTRAINT fpk_survey_assist FOREIGN KEY (assisted_concept_id)  REFERENCES concept (concept_id);

ALTER TABLE survey ADD CONSTRAINT fpk_respondent_type FOREIGN KEY (respondent_type_concept_id)  REFERENCES concept (concept_id);

ALTER TABLE survey ADD CONSTRAINT fpk_survey_timing FOREIGN KEY (timing_concept_id)  REFERENCES concept (concept_id);

ALTER TABLE survey ADD CONSTRAINT fpk_collection_method FOREIGN KEY (collection_method_concept_id)  REFERENCES concept (concept_id);

ALTER TABLE survey ADD CONSTRAINT fpk_survey_source FOREIGN KEY (survey_source_concept_id) REFERENCES concept (concept_id);

ALTER TABLE survey ADD CONSTRAINT fpk_validation FOREIGN KEY (validated_survey_concept_id) REFERENCES concept (concept_id);

ALTER TABLE survey ADD CONSTRAINT fpk_visit FOREIGN KEY (visit_occurrence_id) REFERENCES visit (visit_occurrence_id);

ALTER TABLE survey ADD CONSTRAINT fpk_response_visit FOREIGN KEY (response_to_visit_occurrence_id) REFERENCES visit (visit_occurrence_id);