## docker-gerrit
##### To start manually:
```bash
$ docker run -i -d -p 8080:8080 \
                   -p 29418:29418 \
                   -v /opt/gerrit/git:/opt/gerrit/work/git \
                   -v /opt/gerrit/db:/opt/gerrit/work/db \ 
                   abaranov/gerrit
```
##### To start with ansible: 
```bash
$ ansible-playbook -i <hosts> run_gerrit.yml
```
