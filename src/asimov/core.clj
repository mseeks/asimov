(ns asimov.core
	(:require [clojure.string :as string])
	(:require [cheshire.core :as json])) ; should probably use clojure.data.json instead, it's more of a standard

(defn parse [text]
	(string/split text #"\W+")) ; find each and every word ... like sherlock holmes

(defn relate [text] ; relate the words with its attributes and to other words eventually
	(json/generate-string
		(for [word (parse text)] {word {:length (count word)}}))) ; creates json like the one below
		; [{"hello": {"length": 5}},{"world": {"length": 5}}]
