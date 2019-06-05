baselines
baseline: spec
	<baseline>
	self moose: spec.
	self parametrizedTest: spec.
	self carrefour: spec.
	self taskitShell: spec.
	spec
		package: #MuadDib
		with: [ spec requires: #(Moose ParametrizedTests Carrefour TaskItShell) ]