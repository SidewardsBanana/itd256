BUILD = $(CURDIR)/build.sql
SCRIPTS = $(CURDIR)/scripts
ENV_REMOTE = $(CURDIR)/.pgenv.remote
ENV_LOCAL = $(CURDIR)/.pgenv.local
CSV_LOCAL = $(CURDIR)/master_plan.csv
MAIN = $(SCRIPTS)/import.sql
NORMALIZE = $(SCRIPTS)/normalize.sql 
IMPORT = $(SCRIPTS)/import2.sql
SHELL := /usr/bin/env bash

all:
	@echo "Error: Please specify remote or local target!"

remote: clean main
	@cat $(IMPORT) >> $(BUILD)
	@cat $(NORMALIZE) >> $(BUILD)
	source $(ENV_REMOTE) && psql -h $${PGHOST} -d $${PGDATABASE} -U $${PGUSER} -f $(BUILD)
	
local: clean main
	@cat $(IMPORT) >> $(BUILD)
	@cat $(NORMALIZE) >> $(BUILD)
	source $(ENV_LOCAL) && psql -h $${PGHOST} -d $${PGDATABASE} -U $${PGUSER} -f $(BUILD)

main:
	@cat $(MAIN) >> $(BUILD)

import: main
	@echo "COPY import.master_plan FROM $(CSV_LOCAL) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)

normalize: import
	@cat $(NORMALIZE) >> $(BUILD)

clean:
	@rm -rf $(BUILD)