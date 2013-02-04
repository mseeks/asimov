(ns asimov.test.core
	(:use [asimov.core])
	(:use [clojure.test]))
  
(deftest parsing
	(is (= ["hello" "world"] (parse "hello world"))))

(deftest relating
	(println (relate "hello world!")))
	;(is (= "{\"words\"{\"hello\"{\"length\":5}}}" (relate "hello"))))