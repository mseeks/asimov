(ns asimov.test.core
	(:use [asimov.core])
	(:use [clojure.test]))
  
(deftest words
	(is (= ["hello" "world"] (words_in "hello world"))))

(deftest relating
	(println (relate "hello world!")))
	;(is (= "{\"words\"{\"hello\"{\"length\":5}}}" (relate "hello"))))
	
(deftest sorting (println (sort-by-frequency (slurp "/Users/msull92/Projects/asimov/demo.txt"))))