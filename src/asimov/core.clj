(ns asimov.core
	(use [[com.ashafa.clutch]
		  [environ.core]]))

(def db (assoc (cemerick.url/url "https://msull92.cloudant.com" "asimov")
                    :username (env :asimov-db-username)
                    :password (env :asimov-db-password)))
