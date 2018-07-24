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

Dev script to create the required indexes for the recently accepted PAYER_PLAN_PERIOD table proposal as described in github issue #107: https://github.com/OHDSI/CommonDataModel/issues/107

last revised: 24-July-2018

author:  Clair Blacketer

description:  These indices, primary keys and constraints are considered a minimal requirement to ensure adequate performance of analyses.

*************************/

/*Primary Key*/

ALTER TABLE payer_plan_period ADD CONSTRAINT xpk_payer_plan_period PRIMARY KEY NONCLUSTERED ( payer_plan_period_id ) ;

/*Indices and Constraints*/

CREATE CLUSTERED INDEX idx_period_person_id ON payer_plan_period (person_id ASC);


ALTER TABLE payer_plan_period ADD CONSTRAINT fpk_payer_plan_period FOREIGN KEY (person_id)  REFERENCES person (person_id);

ALTER TABLE payer_plan_period ADD CONSTRAINT fpk_contract_person FOREIGN KEY (contract_person_id) REFERENCES person (person_id);

ALTER TABLE payer_plan_period ADD CONSTRAINT fpk_payer_concept_id FOREIGN KEY (payer_concept_id) REFERENCES concept (concept_id);

ALTER TABLE payer_plan_period ADD CONSTRAINT fpk_payer_source_concept FOREIGN KEY (payer_source_concept_id) REFERENCES concept (concept_id);

ALTER TABLE payer_plan_period ADD CONSTRAINT fpk_plan_concept_id FOREIGN KEY (plan_concept_id) REFERENCES concept (concept_id);

ALTER TABLE payer_plan_period ADD CONSTRAINT fpk_plan_source_concept FOREIGN KEY (plan_source_concept_id) REFERENCES concept (concept_id);

ALTER TABLE payer_plan_period ADD CONSTRAINT fpk_contract_concept_id FOREIGN KEY (contract_concept_id) REFERENCES concept (concept_id);

ALTER TABLE payer_plan_period ADD CONSTRAINT fpk_contract_source_concept FOREIGN KEY (contract_source_concept_id) REFERENCES concept (concept_id);

ALTER TABLE payer_plan_period ADD CONSTRAINT fpk_sponsor_concept_id FOREIGN KEY (sponsor_concept_id) REFERENCES concept (concept_id);

ALTER TABLE payer_plan_period ADD CONSTRAINT fpk_sponsor_source_concept FOREIGN KEY (sponsor_source_concept_id) REFERENCES concept (concept_id);

ALTER TABLE payer_plan_period ADD CONSTRAINT fpk_stop_reason_concept FOREIGN KEY (stop_reason_concept_id) REFERENCES concept (concept_id);

ALTER TABLE payer_plan_period ADD CONSTRAINT fpk_stop_reason_source FOREIGN KEY (stop_reason_source_concept_id) REFERENCES concept (concept_id);