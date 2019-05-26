baselines
baseline: spec
	self moose: spec.
	self parametrizedTest: spec.
	spec package: #MuadDib with: [ spec requires: #(Moose ParametrizedTest)] .
	