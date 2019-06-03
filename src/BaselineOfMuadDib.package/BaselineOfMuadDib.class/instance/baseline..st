baselines
baseline: spec
	self moose: spec.
	self parametrizedTest: spec.
	self carrefour: spec.
	spec package: #MuadDib with: [ spec requires: #(Moose ParametrizedTest Carrefour)] .
	