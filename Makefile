######################################################
ORG=ucsd-cse223b-sp21
ASSN=lab1
STARTER=lab1-starter
######################################################

check: 
	cd ${CURDIR}/src/triblab/ && $(MAKE) all
	cd ${CURDIR}/src/triblab/ && $(MAKE) testv-lab1

turnin: 
	git commit -a -m "turnin"
	git push origin master

upstream:
	git remote add upstream https://github.com/$(ORG)/$(STARTER)

update:
	git pull upstream master
