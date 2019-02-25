TARGETS := all clean
SUBDIRS := lib app1 app2 app3

$(TARGETS): $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS)

-include $(DEPS)
