as yet unclassified
exportToFile: filepath
	| stream |
	stream := filepath asFileReference writeStream.
	stream nextPutAll: self toGemCodeAll.

	stream close