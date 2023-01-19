DB=jlf_enceladus
BUILD=${CURDIR}/build.sql
SCRIPTS=${CURDIR}/scripts
CSV='${CURDIR}/home/jfallon/master_plan.csv
MASTER=$(CURDIR)/import.sql
NORMALIZE = $(CURDIR)/normalize.sql 

all: normalize
	psql $(DB) -f $(BUILD)
master:
	@cat $(MASTER) >> $(BUILD)
import: master
	@echo "COPY import.master_plan FROM $(CSV) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
normalize: import
	@cat $(NORMALIZE) >> $(BUILD)
clean:
	@rm -rf $(BUILD)
