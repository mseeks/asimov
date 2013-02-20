(ns asimov.core
	(:require [clojure.string :as string])
	(:require [cheshire.core :as json])) ; should probably use clojure.data.json instead, it's more of a standard

(defn words_in [string]
	(string/split string #"\W+")) ; find each and every word ... like sherlock holmes

(defn relate [text] ; relate the words with its attributes and to other words eventually
	(json/generate-string
		(for [word (words_in text)] {word {:length (count word)}}))) ; creates json like the one below
		; [{"hello": {"length": 5}},{"world": {"length": 5}}]

(defn sort-by-frequency ; temporary
	"Sorts words by frequency."
	{:added "0.0.1"}
	[string]
	(reverse
		(sort-by second 
			(frequencies
				(words_in string)))))