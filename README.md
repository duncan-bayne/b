#b
b looks in `$HOME/.brc` for a Bamboo server URI, and warns the user before continuing to run a command if there are any failing plans.

##licence
b is licensed under the [GNU Lesser General Public License](http://www.gnu.org/licenses/lgpl.html).

### why the LGPL?
The GPL is specifically designed to reduce the usefulness of GPL-licensed code to closed-source, proprietary software. The BSD license (and similar) don't mandate code-sharing if the BSD-licensed code is modified by licensees. The LGPL achieves the best of both worlds: an LGPL-licensed library can be incorporated within closed-source proprietary code, and yet those using an LGPL-licensed library are required to release source code to that library if they change it.

##usage

First, create `$HOME/.brc` that contains just the Bamboo URI for the server you're interested in.  E.g.:

    http://master.cd.vpc.realestate.com.au/rest/api/latest/result.json

Then, link `b` to where your scripts live (e.g. `$HOME/bin`) and use it like so:

    $ b ls -l
    The following Bamboo plans are failing!

    a-project-that-is-failing
    AnotherDeadProject

    Press C-c to abort, or ENTER to run command 'ls -l' anyway.

    total 16
    -rwxr-xr-x 1 duncan duncan  614 Mar  1 15:41 b
    -rw-r--r-- 1 duncan duncan   60 Mar  1 15:25 Gemfile
    -rw-r--r-- 1 duncan duncan  187 Mar  1 15:25 Gemfile.lock
    -rw-r--r-- 1 duncan duncan 1090 Mar  1 15:45 #README.md#
    -rw-r--r-- 1 duncan duncan    0 Mar  1 15:45 README.md
