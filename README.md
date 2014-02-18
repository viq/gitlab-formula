gitlab-formula
==============

SaltStack formula to install GitLab

Salt state for installing GitLab - https://gitlab.com/gitlab-org/gitlab-ce

Following original install docs ( https://gitlab.com/gitlab-org/gitlab-ce/blob/6-5-stable/doc/install/installation.md ) as close as possible, with some exceptions:
* ruby 1.9.3 is enough for it to work, so I'm using system packages for that

Currently tested only on Debian, further systems planned.

Initial work done for CentOS but doesn't work there yet, heavily inspired by https://github.com/gitlabhq/gitlab-recipes/tree/master/install/centos

There are some initial bits for supporting RVM, but it's not working yet.

Tuning of PostgreSQL via pillar is planned for the future.

I assume you're running gitlab under your node's FQDN, not under another name.

Attempt made to have most settings tunable via pillars.
