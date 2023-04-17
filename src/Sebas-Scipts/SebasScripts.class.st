Class {
	#name : #SebasScripts,
	#superclass : #Object,
	#category : #'Sebas-Scipts'
}

{ #category : #abstract }
SebasScripts class >> installIllimani [

	EpMonitor disableDuring: [
		Metacello new
			baseline: 'AllocationProfiler';
			repository: 'github://jordanmontt/illimani-memory-profiler:main';
			load ]
]

{ #category : #'world menu' }
SebasScripts class >> sebasOn: aBuilder [

	<worldMenu>
	(aBuilder item: #SebasScripts)
		label: 'Sebas''s Scripts';
		order: 110;
		icon: ((self iconNamed: #scriptManager) scaledToSize: 16 @ 16);
		with: [
			(aBuilder item: #'Install Illimani') action: [ self installIllimani ] ]
]
