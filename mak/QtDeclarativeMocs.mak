$(QT5XHB_OBJ_DIR)/QDeclarativeComponentSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QDeclarativeComponentSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDeclarativeEngineSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QDeclarativeEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDeclarativeExpressionSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QDeclarativeExpressionSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDeclarativePropertyMapSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QDeclarativePropertyMapSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDeclarativeViewSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QDeclarativeViewSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
