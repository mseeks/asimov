(ns asimov.core
	(:require [clojure.string :as string])
	(:require [cheshire.core :as json]))

(defn parse [text]
	(string/split text #"\W+"))

(defn relate [text]
	(json/generate-string
		(for [word (parse text)] {word {:length (count word)}})))