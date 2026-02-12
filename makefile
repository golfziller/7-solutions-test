stacked:
	stacked generate

stacked/view:
	stacked create view $(name)

stacked/service:
	stacked create service $(name)

stacked/dialog:
	stacked create dialog $(name)

stacked/delete:
	stacked delete $(type) $(name)
	
l10n:
	dart  run easy_localization:generate -f keys -S lib/core/translations/ -s th.json -O lib/core/translations/ -o locale_keys.g.dart


