accessing
testHibernatePluginDetectsAPostgresConnection
	| analyzer |
	analyzer := MDAnalyzer new.
	analyzer useHibernatePlugin.
	(analyzer datasourcesFor: model) first halt.