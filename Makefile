CC       = node_modules/coffee-script/bin/coffee
#OBJS     = app.js
TARGET   = app.js
PAGER    = lv
.SUFFIXES: .coffee .js


run: $(OBJS)
	-$(CC) app.coffee

.coffee.js:
	$(CC) -c $<

clean:
	rm -f $(OBJS) $(TARGET)

view: $(TARGET)
	$(PAGER) $?

