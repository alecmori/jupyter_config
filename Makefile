venv:
	virtualenv --python=python3 venv
	venv/bin/pip install -r requirements.txt
	

jupyter_extentions:
	jupyter contrib nbextension install --user
	jupyter nbextensions_configurator enable --user
	jt -t chesterish -fs 95 -altp -tfs 14 -nfs 115 -cellw 88% -T

jupyter: jupyter_extentions
	jupyter notebook
