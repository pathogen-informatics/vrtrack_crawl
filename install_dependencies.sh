#!/bin/bash

set -x
set -e

cpanm Dist::Zilla
dzil authordeps --missing | cpanm
cpanm DBICx::TestDatabase JSON File::Slurp YAML::XS LWP::UserAgent XML::TreePP URI::Escape

set +eu
set +x
