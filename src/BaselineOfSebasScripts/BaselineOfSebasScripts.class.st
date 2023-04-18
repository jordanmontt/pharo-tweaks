Class {
	#name : #BaselineOfSebasScripts,
	#superclass : #BaselineOf,
	#category : #BaselineOfSebasScripts
}

{ #category : #baselines }
BaselineOfSebasScripts >> baseline: spec [

	<baseline>
	spec for: #common do: [
		"Packages"
		spec package: 'Sebas-Scripts'.
		"Groups"
		spec group: 'default' with: #( 'core' ).
		spec group: 'core' with: #( 'Sebas-Scripts' ) ]
]
